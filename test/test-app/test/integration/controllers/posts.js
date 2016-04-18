import { expect } from 'chai';
import fetch from 'isomorphic-fetch';

const host = 'http://localhost:4000';

describe('Integration: class PostsController', () => {
  describe('#index()', () => {
    let subject, payload;

    before(async () => {
      subject = await fetch(`${host}/posts`);
      payload = await subject.json();
    });

    it('has 200 status code', () => {
      expect(subject.status).to.equal(200);
    });

    it('has JSON API `Content-Type` header', () => {
      expect(
        subject.headers.get('Content-Type')
      ).to.equal('application/vnd.api+json');
    });

    it('returns a collection records', () => {
      expect(payload.data).to.be.an.instanceOf(Array);
    });

    it('has a links with a reference to `self`', () => {
      expect(payload.links)
        .to.have.property('self')
        .and.equal(`${host}/posts`);
    });

    describe('Feat pagination', () => {
      let pagesWithLimit, pagesWithoutLimit;

      before(async () => {
        pagesWithLimit = await Promise.all([
          ...[1, 2, 4, 5, 6].map(async (page) => {
            page = await fetch(`${host}/posts?page=${page}&limit=10`);

            return {
              subject: page,
              payload: await page.json()
            };
          })
        ]);

        pagesWithoutLimit = await Promise.all([
          ...[1, 2, 3].map(async (page) => {
            page = await fetch(`${host}/posts?page=${page}`);

            return {
              subject: page,
              payload: await page.json()
            };
          })
        ]);
      });

      it('works', () => {
        expect(
          [...pagesWithLimit, ...pagesWithoutLimit].some(page => {
            return page.subject.status !== 200;
          })
        ).to.be.false;
      });

      it('supports limit parameter', () => {
        let page;

        for (page of pagesWithLimit) {
          expect(page.payload.data).to.have.length.within(0, 10);
        }
      });

      it('has a default limit parameter of 25', () => {
        let page;

        for (page of pagesWithoutLimit) {
          expect(page.payload.data).to.have.length.within(0, 25);
        }
      });

      it('has [first, last, prev, next] links', () => {
        let page;

        for (page of pagesWithLimit) {
          expect(page.payload.links)
            .to.have.all.keys('self', 'first', 'last', 'prev', 'next');
        }

        for (page of pagesWithoutLimit) {
          expect(page.payload.links)
            .to.have.all.keys('self', 'first', 'last', 'prev', 'next');
        }
      });
    });
  });

  describe('#show()', () => {
    let subject;

    before(async () => {
      subject = await fetch(`${host}/posts/1`);
    });

    it('has 200 status code', () => {
      expect(subject.status).to.equal(200);
    });

    it('has JSON API `Content-Type` header', () => {
      expect(
        subject.headers.get('Content-Type')
      ).to.equal('application/vnd.api+json');
    });
  });
});
