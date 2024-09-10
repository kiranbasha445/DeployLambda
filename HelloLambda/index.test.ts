import { handler } from './index';

test('Lambda handler returns 200 status', async () => {
  const result = await handler({});
  expect(result.statusCode).toBe(200);
});