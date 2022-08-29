'reach 0.1';

export const main = Reach.App(() => {
  const A = Participant('Alice', {
    // Specify Alice's interact interface here
    info: Fun([], Bytes(300))
  });
  const B = Participant('Bob', {
    // Specify Bob's interact interface here
    got: Fun([Object({
        text: Bytes(500),
        owner: Address
      })], Null)
   });
  init();
  // The first one to publish deploys the contract
  
  A.publish();
  commit();
  // The second one to publish always attaches
  B.publish();
  commit();
  // write your program here
  exit();
});
