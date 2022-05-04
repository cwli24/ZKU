# ZKU
Big thanks/shoutout to the [Harmony](https://www.harmony.one/) blockchain and team ($ONE) for sponsoring this course!

Building products on applied zero-Knowledge proof will surely contribute to the future of decentralized web3. Let's go crypto(graphy/security/currency)!

## Syllabus
📝Week 0: Self-preparation (start now!)
This course is all about learning by doing. There are already a lot of online materials for learning ZK. The challenge is in part about deciding what to watch/read. so this syllabus tries to help with that. But even with this curated list, there is a lot to go through. One way to optimize and know when to stop is to see if you can finish a task.
If you can finish the Background Assignment in time, you’re likely ready for this course.

📝Week 1: Theory
In this unusual week (starting Feb 28), we focus on the theoretical side of things. One can skip most of the difficult math, but some conceptual understanding of ZK is important. We’ll learn/refresh what are Merkle trees, and learn how to use circom for basic ZK problems. We’ll also learn on a very general level what are the different kinds of proofs: snark, stark, plonk, bulletproof, etc.

Study content (this list typically contains 2-3 videos + 1-2 short articles for your self-study. we try to keep it manageable, but one trick is to go read the assignment first and from there prioritize how much time you need to spend to get the assignment done):

* Introduction to Zero-Knowledge Proofs
* General Theoretical Background
* Circom documentation
* Class demo: Circom tutorial and demonstration

📝Week 2: Privacy
We continue with a bit of ZK theory related to privacy and how privacy is achieved. There are resources to understand what are trusted setups, and why they produce so-called toxic waste. We will focus on one primary use case for ZK: privacy. In particular, we’ll focus on two types of products: mixers (Tornado Cash) allow us to keep our transaction records from leaking to the entire public; authentication (Semaphore) protocols allow users to prove that we’re a member of a group, without revealing their exact identity (or sending passwords/credit card info over the internet).

Study content:

* Zk Privacy
* Semaphore
* Tornado.cash - How does it work?
* Demo - Semaphore Part 1: Theory
* Demo - Semaphore Part 2: Authentication
* Demo - Tornado Cash/Nova

📝Week 3: Fairness
We move on to another major use case of zk: fairness. with verifiable delay functions (VDFs), we can make sure that a randomization process is truly unbiased. We’ll quickly go through the basic concept. This can apply to infrastructure building: When we build consensus protocols we often need to randomly pick leaders / validators to make important decisions (approve transactions), or we shuffle them into groups (shards) in a truly random fashion so that they can’t plan in advance to collude together.

In the context of applications, games also often require provably fair randomization, e.g. the shuffling of a deck of cards in a high-stake poker tournament.

Finally, there are also dedicated tools for combating collusion. We’ll try to understand what may be the biggest challenges currently. e.g. MACI for fair voting works by making it impossible for voters to demonstrate how they have actually voted, which thereby lowers the effectiveness and incentives for bribery. But it is a considerably harder problem to stop people from creating multiple online identities, in order to multiply their influences. Addressing this problem will help to address several ethical issues, such as for implementing decentralized basic income, quadratic voting, etc.

Study content:

* Dark Forest
* InterRep
* VDF
* MACI
* InterRep
* InterRep Tech Doc

***from here students with sufficient experience in Rust programming can declare to choose to go into Stream A (infrastructure building). They will continue to complete these assignments, and they will be paid slightly more for prizes, for satisfactory and timely submissions. Other students can choose to go into Stream B (applications), so they can skip all coding exercises in assignments from here. Instead, they can focus on starting their final project. They will still need to answer the ‘conceptual’ questions in assignments, and these will still lead to cash prizes. They also need to provide weekly updates on progress in their final project.

📝Week 4: Succinctness
We focus on the third major use case of zero-knowledge, the idea that proofs are often more succinct than the information we’re trying to conceal. Because of this, zero-knowledge can help us scale up decentralized infrastructures, where duplication and transmission of information are usually the bottlenecks. We’ll try to understand the different kinds of rollups, which helps with scaling by compressing transactions. With zero-knowledge, another advantage is that the clients/nodes within the network may no longer need to keep the full transaction record - they can thereby become stateless, leading to much better scalability.

Study content:

* Different L2 solutions (Q1)
* What is ZK Rollup? (Q1)
* Overview of ZKSync (Q2)
* Demo of zkSync (Q2)
* Demo of Mina (Q3)
* ZkApp developer resource kit (Q3)

📝Week 5: Privacy again
This week we will be revisiting the use case of privacy, within the context of infrastructure. We will go through some overview of bridge designs, and address how privacy can be built into them with zero-knowledge. We will think about how privacy can be achieved at the base layer level as well as within other layer-2 solutions.

Study content:

* Privacy-preserving blockchain bridges
* AZTEC Protocol - Bringing Scalable Privacy to DEFI
* Drew Explaining Webb Protocol - Interoperable Private zk-Applications
* Demo of Aztec
* Demo of Webb

📝Week 6: Interoperability
This week we discuss further how zk can make bridges more secure and efficient. In particular, some bridges claim to be trustless, but what does it really mean? Light clients, like stateless clients, do not store all previous transaction records. They can support efficient relay mechanisms for bridges to function.

Study content:

* The interoperability trilemma
* Light clients, part 2, part 3, video
* Demo Harmony horizon bridge
* Demo Celo’s Plumo
* Near’s rainbow bridge

📝Week 7: What’s next?
As everyone should be building their final project by now, we will not be doing coding exercises this week. Instead, we will review some emerging trends with game-changing potentials.

Celestia aims to focus on the data availability problem, within the framework of a modular architecture where each protocol can focus on a specific aspect of decentralization: storing (transaction) data,  building consensus,  and executing transactions. What does this mean for future scaling solutions?

The challenging problem of building a zk-EVM seems to be close to resolution. What does it mean for Solidity programmers w/o substantial zk knowledge in the future?

How about Polygon’s rapid expansion into the zk space (having acquired several of the zk powerhouses within 2021)? What are the most interesting use cases of Stark?

Study content:

* What is Data Availability?
* Monolithic vs modular blockchain
* Celestia
* zk-Stark
* Polygons ZK Product Overview
