import os from 'os';
import path from 'path';
import { spawn, execSync } from 'child_process';

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

  app.stdout.once('data', async () => {
    await new Promise(resolve => setTimeout(resolve, 10000));
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
