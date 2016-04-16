import { expect } from 'chai';
import fetch from 'isomorphic-fetch';

const host = 'http://localhost:4000';

describe('Integration: class AuthorsController', () => {
  describe('#index()', () => {
    let subject;

    before(async () => {
      subject = await fetch(`${host}/posts`);
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
