module.exports = {
  testEnvironment: "node",
  rootDir: "./",
  testMatch: ["**/*.test.ts"],
  transform: {
    "^.+\\.tsx?$": "ts-jest",
  },
};
