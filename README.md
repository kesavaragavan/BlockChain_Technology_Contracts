# BlockChain_Technology_Contracts
Created Custom Contract for transitions using Solidity and remix.<br />
Remix will provide online compiler and testing accounts with 100 ETH.<br />
The Contract written for following scenario.<br />
## Scenario
  After the inclusion of Blockchain Technology in his business, Dexter’s shop became an overnight coffee destination. Given its popularity and the sheer audience which wants to visit the shop, he plans to earn through people’s entry as well. Dexter wants to introduce a ticketing system wherein the customers will be paying a certain amount for entry into the shop. Since Dexter wants to maximise his gains, he doesn’t  want to keep extra staff for this purpose and as per his friend’s suggestion a smart contract would be an appropriate tool for automating the entry process and charging the entering customers without any human intervention. 
### Explanation:
  Whenever a customer wishes to enter the Coffee Shop, they will need to buy the Royal Entry Tokens (RET). The customers can buy as many RETs as they desire, given that their wallet balance permits them to do so. Once a consumer buys a certain amount of tokens, it should show up in their Entry Balance. Now the customer has the choice of how many Entry tokens they would like to use (Users can also bring some company to the coffee shop with them). As per the user’s choice, a certain amount of Entry tokens will get consumed and they should be removed from their balance tokens. 

Also, if the customer wishes to sell their RETs then they should be able to do so given that they cannot sell more than what they hold. After selling the entry tokens, the customer’s balance should be updated for the same.  

All the purchases and sales of Entry tokens should be tied to the user’s ID. In Remix IDE you can pick demo Ether accounts that have a certain demo Ether balance and based on the ID attached to that demo account, you should be able to identify the ticket holders.

### EDGE Case
  1> Only the token owner should be able to sell the entry tokens attached to their account.<br />
  2> Users cannot buy Entry tokens for more than their wallet balance.<br />
  3> Users cannot sell what they do not hold.<br />
