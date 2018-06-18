import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/CommunityToken.sol";

contract DemoSolidityTest {
  function testInitialBalanceUsingDeployedContract() {
    CommunityToken coin = new CommunityToken();

    uint expected = 0;

    Assert.equal(coin.balanceOf(tx.origin), expected, "Owner should have 0 Community token initially");
  }
}
