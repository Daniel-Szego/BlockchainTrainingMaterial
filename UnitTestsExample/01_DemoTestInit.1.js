var CommunityToken = artifacts.require("CommunityToken");
var CommunityTokenInstance;
var TotalSupply;

contract('CommunityToken', function(accounts) {
    it("test of the community token", function() {
        return CommunityToken.deployed().then(function(instance) {
            CommunityTokenInstance = instance;
            return CommunityTokenInstance.totalSupply({from: accounts[0]});             
        }).then(function(result) {
            TotalSupply = result;
            assert.equal(TotalSupply, 0, "Simple creation supply is null");            
        });
    });
});

