import os from 'os';
import path from 'path';
import { spawn, execSync } from 'child_process';

import Promise from 'bluebird';

let app;

before(done => {
  const testApp = path.join(__dirname, 'test-app');

  app = spawn('lux', ['serve'], {
    cwd: testApp,
    env: {
      ...process.env,
      PWD: testApp
    }
  });

  app.once('error', done);

  app.stdout.setEncoding('utf8');
  app.stderr.setEncoding('utf8');

  app.stdout.on('data', data => console.log(data));
  app.stderr.on('data', err => console.error(err));

  app.stdout.once('data', async () => {
    await new Promise(resolve => setTimeout(resolve, 60000));
    done();
  });
});

after(() => {
  if (app) {
    let i = 0;

    for (let i = 0; i < os.cpus().length; i++) {
      execSync(`kill -9 ${app.pid + i} || true`);
    }
  }
});
