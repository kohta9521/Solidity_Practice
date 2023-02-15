const GreeterContract = artifacts.require("Greeter");

contract("Greeter", (accounts) => {
  describe("deployment", () => {
    it("has been deployed successfully", async () => {
      const greeter = await GreeterContract.deployed();
      assert(greeter, "contract failed to deploy");
    });
  });
});
