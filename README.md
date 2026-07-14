# HACKATHON — "INNOVANDO POR UN FUTURO SOSTENIBLE"
## EcoTrace Protocol
**Immutable Recycling Traceability for Sustainable Supply Chains on LACNet**
*Final Technical & Economic Report*

---

### 1. Solution Summary (Abstract)
EcoTrace Protocol is a decentralized supply-chain traceability system that records recycling batches (material type, weight, and location) as immutable transactions on an EVM-compatible blockchain deployed on the LACNet Open Pro-Testnet[cite: 1]. By replacing self-reported sustainability claims with cryptographically verifiable, publicly auditable records, the protocol directly addresses the information asymmetry (Akerlof, 1970) that currently undermines trust in recycling certification[cite: 1]. Economically, EcoTrace functions as a low-cost signaling mechanism (Spence, 1973): it allows recyclers, municipalities, and corporations to credibly demonstrate environmental performance without relying on costly, centralized third-party audits, while treating aggregated recycling data as a positive-externality-generating digital public good (Samuelson, 1954)[cite: 1].

### 2. Alignment with Hackathon Objectives
* **Hackathon Mandate Context:** EcoTrace Protocol is strategically engineered to directly advance the hackathon's core directive—"Innovando por un Futuro Sostenible"—by leveraging decentralized architecture to establish immutable supply chain transparency and combat corporate greenwashing in the circular economy[cite: 1].
* **Objective 1 - Elimination of Information Asymmetry:** To substitute unverifiable paper claims with cryptographic proofs, drastically reducing verification costs and restoring market trust across recyclers, industrial transformers, and regulators[cite: 1].
* **Objective 2 - Open-Source Public-Goods Scalability:** To deploy a public, EVM-compatible ledger on LACNet that serves as a non-rival and non-excludable digital public good, enabling seamless adoption across Latin American supply chains at near-zero marginal infrastructure cost[cite: 1].

### 3. Project Name
The project is formally designated **EcoTrace Protocol**[cite: 1]. The name combines the concepts of ecological responsibility ("Eco") and verifiable supply-chain tracking ("Trace")[cite: 1]. As an executive Web3 protocol identity, EcoTrace Protocol signals to auditors, enterprises, and hackathon evaluators that the solution provides an immutable digital registry for recycling batches rather than a simple subjective reporting tool[cite: 1]. Slogan: *"Turning every recycled kilogram into verifiable, on-chain truth."*[cite: 1]

### 4. Team Members and Roles
The project is developed by an interdisciplinary four-member team structured around specialized functional roles to optimize output and execution quality[cite: 1]:

| Team Member | Role | Key Responsibilities |
| :--- | :--- | :--- |
| **Moza Perez, Leonardo Benjamin** | Lead Smart Contract Architect & Developer *(EVM/Solidity)* | Designs and implements the `EcoTrace.sol` smart contract, manages deployment on LACNet Open Pro-Testnet, optimizes GAS consumption, and ensures contract security and data immutability[cite: 1]. |
| **Pari Adco, Renzo Alexander** | Microeconomics & Sustainability Analyst *(ESG & Market Metrics)* | Develops the microeconomic framework (information asymmetry, signaling, positive externalities), models ESG impact metrics, and quantifies market-failure correction[cite: 1]. |
| **Morales Villafranca, Luis Sebastian** | Product Manager & Pitch Specialist *(Documentation & Strategy)* | Coordinates the project narrative, writes documentation, structures the pitch deck, and aligns deliverables with the hackathon rubric and Sustainable Development Goals[cite: 1]. |
| **Cruz Serna, Jefferson Deivi** | DevOps & QA Demo Lead *(LACNet Testnet & Video Presentation)* | Manages the testnet environment, executes quality assurance on contract functions, records and edits the functional demo video, and verifies on-chain transactions via the block explorer[cite: 1]. |

### 5. Problem Description & Market Failure Analysis
Peru generates an average of 23,000 tons of municipal solid waste per day[cite: 1]. Although 78% of this waste has technical recycling potential, only 1.8% is formally reincorporated into productive value chains[cite: 1]. Furthermore, MINAM estimates that while over 180,000 recyclers operate nationwide, only ~3% (approx. 5,500) are formally registered, leaving more than 85% of the recycling sector operating in informality[cite: 1].

From a microeconomic perspective, this structural bottleneck is driven by three main drivers[cite: 1]:
1. **Information Asymmetry & Market for Lemons (Akerlof, 1970):** Corporate ESG claims and recycling certificates rely on self-reported, centrally issued paper trails that are easily falsified[cite: 1]. High verification costs prevent buyers from distinguishing genuine recycled materials from unverified ones, causing buyers to discount all environmental claims and crowding out high-quality recyclers[cite: 1].
2. **Prohibitive Transaction & Audit Costs (Coase, 1960):** Traditional sustainability verification relies on periodic manual third-party audits, creating high fixed costs that prevent small collection centers and informal recyclers from entering formal markets[cite: 1].
3. **Uncaptured Positive Externalities (Samuelson, 1954):** Formal recycling generates public environmental benefits that are not monetized by the actor, leading to structural under-provisioning when unbacked by low-cost verification systems[cite: 1].

**Table 1: Dimensions of Market Failure in Recycling Traceability**

| Market Dimension | Current Inefficient Status Quo | Economic & Market Impact |
| :--- | :--- | :--- |
| **Information Asymmetry** | Unverifiable, self-reported ESG claims and recycling metrics[cite: 1]. | Widespread greenwashing; buyer skepticism; market discount on recycled inputs[cite: 1]. |
| **Transaction Costs** | Expensive, periodic paper-based third-party audits[cite: 1]. | High barriers to entry for informal recyclers; limited audit frequency[cite: 1]. |
| **Externalities** | Positive externalities of verified recycling are unmeasured and uncredited[cite: 1]. | Suboptimal formal valorization rate (1.8% in Peru) despite high potential[cite: 1]. |

### 6. Technologies Used & Technical Justification
The technology stack is selected to minimize deployment friction while guaranteeing auditability, immutability, and low operating costs[cite: 1]:

| Technology | Role in the Project | Microeconomic / Technical Justification |
| :--- | :--- | :--- |
| **Solidity (`^0.8.19`)** | Smart Contract Core | Language for writing deterministic access control and batch registration logic (`EcoTrace.sol`)[cite: 1]. |
| **EVM Compatibility** | Blockchain Ledger Architecture | Ensures broad interoperability with established Web3 tooling, wallets, and auditing frameworks[cite: 1]. |
| **LACNet Open Pro-Testnet** | Public-Permissioned Infrastructure | Open node architecture removes native token friction and lowers adoption barriers for public and private actors[cite: 1]. |
| **Remix IDE / Hardhat** | Compilation & Deployment | Enables rigorous testing, contract compilation, and gas estimation during development[cite: 1]. |
| **Block Explorer & Web3 Interfaces** | Verification Dashboard | Provides real-time, public read access for auditors, regulators, and consumers to inspect transaction hashes[cite: 1]. |

* **Technical Note — Gas & Storage Optimization:** The `EcoTrace.sol` smart contract is designed with gas efficiency in mind[cite: 1]. By utilizing sequential integer mapping keys (`mapping(uint256 => Batch)`) and bounded state variables within the `Batch` struct (storing strings for material/location alongside `uint256` for weight and timestamp), state storage usage is kept minimal and execution costs stay predictable[cite: 1].
* **Core Functions:** 
  * `registerBatch(string material, uint256 weightInKg, string location)`: External function that validates inputs, assigns a unique batch ID, records data on-chain, and emits `BatchRegistered`[cite: 1].
  * `getBatch(uint256 id)`: Public view function providing direct, trustless inspection of batch history[cite: 1].
  * `totalBatches()`: Public view function returning total historical volume registered on-chain[cite: 1].

### 7. Project Links
* **Pitch Deck Link:** `[INSERT PITCH DECK LINK HERE]`[cite: 1]
* **GitHub Repository Link:** `[INSERT PUBLIC GITHUB REPOSITORY LINK HERE]`[cite: 1]
* **Video Demo Link (2–5 minutes):** `[INSERT DEMO VIDEO LINK HERE]`[cite: 1]

### 8. Justification of Impact and Scalability
EcoTrace Protocol transforms sustainability certification by acting as an immutable signaling mechanism (Spence, 1973)[cite: 1]. By recording batch origin, material type, and weight on an EVM ledger at the moment of collection, entities generate a hard-to-fake digital record that drastically reduces inspection and verification costs for downstream industrial buyers and environmental regulators[cite: 1].

**Table 2: Traditional Certification vs. EcoTrace Protocol**

| Dimension | Traditional Certification Model | EcoTrace Protocol |
| :--- | :--- | :--- |
| **Data Source** | Self-reported by companies[cite: 1]. | Cryptographically signed on-chain transactions[cite: 1]. |
| **Verification Cost** | High (manual, periodic audits)[cite: 1]. | Low (continuous, automated validation)[cite: 1]. |
| **Transparency** | Opaque centralized databases[cite: 1]. | Publicly queryable, permissionless read access[cite: 1]. |
| **Risk of Manipulation** | High (susceptible to greenwashing)[cite: 1]. | Substantially mitigated via immutability[cite: 1]. |

**Scalability Dynamics:**
1. **Near-Zero Marginal Infrastructure Cost (MC → 0):** Leveraging LACNet's open node network enables additional collection centers, municipalities, or industrial recyclers to join without incurring exponential server or licensing overhead[cite: 1].
2. **Positive Data Network Effects:** As more supply chain actors log batches on EcoTrace, the aggregate dataset increases in utility for national circular economy monitoring and carbon credit backing, encouraging further enterprise onboarding[cite: 1].

### 9. Future Roadmap & Post-Hackathon Projection
*This roadmap outlines the strategic scaling plan following the completion of the Hackathon.*[cite: 1]

#### 📍 Phase 1: MVP & Testnet Deployment (Immediate / Hackathon)
* **Objective:** Deploy and validate core `EcoTrace.sol` functionality on LACNet Open Pro-Testnet[cite: 1].
* **Key Deliverables:** Complete smart contract code, execute successful testnet deployment, conduct end-to-end demo, and publish full open-source documentation[cite: 1].
* **Success Metric:** 100% test pass rate on core batch registration and retrieval functions; verified block explorer transactions[cite: 1].

#### 📍 Phase 2: Oracles & Hardware Integration (Short-to-Mid Term)
* **Objective:** Automate data entry to eliminate manual reporting errors at collection centers[cite: 1].
* **Key Deliverables:** Integrate IoT digital weighing scales directly with Web3 middleware; implement geographic Oracles to verify collection locations automatically[cite: 1].
* **Success Metric:** Successful automated batch registration pilot with a municipal collection partner in Lima[cite: 1].

#### 📍 Phase 3: Tokenomics & Enterprise Expansion (Mid-to-Long Term)
* **Objective:** Expand across Latin American supply chains and introduce incentive mechanics[cite: 1].
* **Key Deliverables:** Launch an incentive token layer for informal recyclers upon verified batch transformation; establish corporate enterprise dashboards for corporate ESG reporting[cite: 1].
* **Success Metric:** Onboarding of multiple industrial transformers across LATAM and integration into corporate ESG compliance reporting[cite: 1].

---

### 10. Alignment with Sustainable Development Goals (SDGs)
* **SDG 12: Responsible Consumption and Production:** Directly supports Target 12.5 by creating auditable mechanisms that verify waste reduction, recycling, and material reuse in industrial supply chains[cite: 1].
* **SDG 13: Climate Action:** Enhances transparency in corporate scope 3 emissions and waste tracking, strengthening confidence in environmental reporting and climate accounting[cite: 1].

---

### References
* Akerlof, G. A. (1970). The market for "lemons": Quality uncertainty and the market mechanism. *The Quarterly Journal of Economics*, 84(3), 488–500[cite: 1].
* Coase, R. H. (1960). The problem of social cost. *Journal of Law and Economics*, 3, 1–44[cite: 1].
* MINAM / ProActivo / RSE Perú (2024–2026). *Informes sobre Gestión de Residuos Sólidos y Formalización del Reciclaje en el Perú*[cite: 1].
* Samuelson, P. A. (1954). The pure theory of public expenditure. *Review of Economics and Statistics*, 36(4), 387–389[cite: 1].
* Spence, M. (1973). Job market signaling. *The Quarterly Journal of Economics*, 87(3), 355–374[cite: 1].
* United Nations (n.d.). *Sustainable Development Goals (SDG 12 & SDG 13)*[cite: 1].
