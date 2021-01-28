const BN = require("bn.js");

const Example = artifacts.require("Example");

describe("Example", () => {
  let contract;
  before(async function () {
    this.timeout(7e3);
    contract = await Example.new();
  });
  it("f1()", async () => console.log(await contract.f1(new BN(123))));
  it("f2()", async () => console.log(await contract.f2({ num: new BN(123) })));
  it("f3()", async () => console.log(await contract.f3({ num: new BN(123) })));
});
