import { test as base } from "@playwright/test";

export const test = base.extend({
  authedPage: async ({ page }, use) => {
    const deserializedCookies = process.env.COOKIES
      ? JSON.parse(process.env.COOKIES)
      : undefined;
    if (deserializedCookies) {
      await page.context().addCookies(deserializedCookies);
    }
    await use(page);
  },
});