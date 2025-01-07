import { expect } from "@playwright/test";
import { test } from "../fixtures/authedPage";

test.describe("User Management", () => {
  test("opens the app", async ({ authedPage }) => {
    await authedPage.goto(
      "https://docsdemos.retool.com/embedded/public/b4889e10-bead-4f30-876e-905e51b1616a"
    );
    await authedPage
    .getByPlaceholder(/Search by name/)
    .fill("eva", { timeout: 5000 });
    // const gridContainer = authedPage.getByTestId("RetoolGrid:listView1");

    // await expect(gridContainer.getByRole("heading")).toHaveCount(2);
    // await expect(gridContainer).toContainText("Eva Noyce");
    // await expect(gridContainer).toContainText("Eva Lu Ator");
  });
});

// what NOT to do:

// test.describe("User Management", () => {
//   test("opens the app", async ({ authedPage }) => {
//     await authedPage.goto(
//       "https://docsdemos.retool.com/embedded/public/b4889e10-bead-4f30-876e-905e51b1616a"
//     );
//     await authedPage.getByPlaceholder(/Search by name/).fill("eva");
  
//     await expect(authedPage.getByRole("heading", { name: /Eva/i })).toHaveCount(
//       2
//     );
//   });
// });