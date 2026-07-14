# HACKATHON — "INNOVANDO POR UN FUTURO SOSTENIBLE"
## EcoTrace Protocol
**Immutable Recycling Traceability for Sustainable Supply Chains on LACNet**
*Final Technical & Economic Report*

---

### 1. Solution Summary (Abstract)
EcoTrace Protocol is a decentralized supply-chain traceability system that records recycling batches (material type, weight, and location) as immutable transactions on an EVM-compatible blockchain deployed on the LACNet Open Pro-Testnet. By replacing self-reported sustainability claims with cryptographically verifiable, publicly auditable records, the protocol directly addresses the information asymmetry (Akerlof, 1970) that currently undermines trust in recycling certification. Economically, EcoTrace functions as a low-cost signaling mechanism (Spence, 1973): it allows recyclers, municipalities, and corporations to credibly demonstrate environmental performance without relying on costly, centralized third-party audits, while treating aggregated recycling data as a positive-externality-generating digital public good (Samuelson, 1954).

### 2. Alignment with Hackathon Objectives
* **Hackathon Mandate Context:** EcoTrace Protocol is strategically engineered to directly advance the hackathon's core directive—"Innovando por un Futuro Sostenible"—by leveraging decentralized architecture to establish immutable supply chain transparency and combat corporate greenwashing in the circular economy.
* **Objective 1 - Elimination of Information Asymmetry:** To substitute unverifiable paper claims with cryptographic proofs, drastically reducing verification costs and restoring market trust across recyclers, industrial transformers, and regulators.
* **Objective 2 - Open-Source Public-Goods Scalability:** To deploy a public, EVM-compatible ledger on LACNet that serves as a non-rival and non-excludable digital public good, enabling seamless adoption across Latin American supply chains at near-zero marginal infrastructure cost.

### 3. Project Name
The project is formally designated **EcoTrace Protocol**. The name combines the concepts of ecological responsibility ("Eco") and verifiable supply-chain tracking ("Trace"). As an executive Web3 protocol identity, EcoTrace Protocol signals to auditors, enterprises, and hackathon evaluators that the solution provides an immutable digital registry for recycling batches rather than a simple subjective reporting tool. Slogan: *"Turning every recycled kilogram into verifiable, on-chain truth."*

### 4. Team Members and Roles
The project is developed by an interdisciplinary four-member team structured around specialized functional roles to optimize output and execution quality:

| Team Member | Role | Key Responsibilities |
| :--- | :--- | :--- |
| **Moza Perez, Leonardo Benjamin** | Lead Smart Contract Architect & Developer *(EVM/Solidity)* | Designs and implements the `EcoTrace.sol` smart contract, manages deployment on LACNet Open Pro-Testnet, optimizes GAS consumption, and ensures contract security and data immutability. |
| **Pari Adco, Renzo Alexander** | Microeconomics & Sustainability Analyst *(ESG & Market Metrics)* | Develops the microeconomic framework (information asymmetry, signaling, positive externalities), models ESG impact metrics, and quantifies market-failure correction. |
| **Morales Villafranca, Luis Sebastian** | Product Manager & Pitch Specialist *(Documentation & Strategy)* | Coordinates the project narrative, writes documentation, structures the pitch deck, and aligns deliverables with the hackathon rubric and Sustainable Development Goals. |
| **Cruz Serna, Jefferson Deivi** | DevOps & QA Demo Lead *(LACNet Testnet & Video Presentation)* | Manages the testnet environment, executes quality assurance on contract functions, records and edits the functional demo video, and verifies on-chain transactions via the block explorer. |

### 5. Problem Description & Market Failure Analysis
Peru generates an average of 23,000 tons of municipal solid waste per day. Although 78% of this waste has technical recycling potential, only 1.8% is formally reincorporated into productive value chains. Furthermore, MINAM estimates that while over 180,000 recyclers operate nationwide, only ~3% (approx. 5,500) are formally registered, leaving more than 85% of the recycling sector operating in informality.

From a microeconomic perspective, this structural bottleneck is driven by three main drivers:
1. **Information Asymmetry & Market for Lemons (Akerlof, 1970):** Corporate ESG claims and recycling certificates rely on self-reported, centrally issued paper trails that are easily falsified. High verification costs prevent buyers from distinguishing genuine recycled materials from unverified ones, causing buyers to discount all environmental claims and crowding out high-quality recyclers.
2. **Prohibitive Transaction & Audit Costs (Coase, 1960):** Traditional sustainability verification relies on periodic manual third-party audits, creating high fixed costs that prevent small collection centers and informal recyclers from entering formal markets.
3. **Uncaptured Positive Externalities (Samuelson, 1954):** Formal recycling generates public environmental benefits that are not monetized by the actor, leading to structural under-provisioning when unbacked by low-cost verification systems.

**Table 1: Dimensions of Market Failure in Recycling Traceability**

| Market Dimension | Current Inefficient Status Quo | Economic & Market Impact |
| :--- | :--- | :--- |
| **Information Asymmetry** | Unverifiable, self-reported ESG claims and recycling metrics. | Widespread greenwashing; buyer skepticism; market discount on recycled inputs. |
| **Transaction Costs** | Expensive, periodic paper-based third-party audits. | High barriers to entry for informal recyclers; limited audit frequency. |
| **Externalities** | Positive externalities of verified recycling are unmeasured and uncredited. | Suboptimal formal valorization rate (1.8% in Peru) despite high potential. |

### 6. Technologies Used & Technical Justification
The technology stack is selected to minimize deployment friction while guaranteeing auditability, immutability, and low operating costs:

| Technology | Role in the Project | Microeconomic / Technical Justification |
| :--- | :--- | :--- |
| **Solidity (`^0.8.19`)** | Smart Contract Core | Language for writing deterministic access control and batch registration logic (`EcoTrace.sol`). |
| **EVM Compatibility** | Blockchain Ledger Architecture | Ensures broad interoperability with established Web3 tooling, wallets, and auditing frameworks. |
| **LACNet Open Pro-Testnet** | Public-Permissioned Infrastructure | Open node architecture removes native token friction and lowers adoption barriers for public and private actors. |
| **Remix IDE / Hardhat** | Compilation & Deployment | Enables rigorous testing, contract compilation, and gas estimation during development. |
| **Block Explorer & Web3 Interfaces** | Verification Dashboard | Provides real-time, public read access for auditors, regulators, and consumers to inspect transaction hashes. |

* **Technical Note — Gas & Storage Optimization:** The `EcoTrace.sol` smart contract is designed with gas efficiency in mind. By utilizing sequential integer mapping keys (`mapping(uint256 => Batch)`) and bounded state variables within the `Batch` struct (storing strings for material/location alongside `uint256` for weight and timestamp), state storage usage is kept minimal and execution costs stay predictable.
* **Core Functions:** 
  * `registerBatch(string material, uint256 weightInKg, string location)`: External function that validates inputs, assigns a unique batch ID, records data on-chain, and emits `BatchRegistered`.
  * `getBatch(uint256 id)`: Public view function providing direct, trustless inspection of batch history.
  * `totalBatches()`: Public view function returning total historical volume registered on-chain.

### 7. Project Links
* **Pitch Deck Link:** `[INSERT PITCH DECK LINK HERE]`
* **GitHub Repository Link:** `https://github.com/leooooooooo-mzzza/ecotrace-protocol`
* **Video Demo Link (2–5 minutes):** `[INSERT DEMO VIDEO LINK HERE]`

### 8. Justification of Impact and Scalability
EcoTrace Protocol transforms sustainability certification by acting as an immutable signaling mechanism (Spence, 1973). By recording batch origin, material type, and weight on an EVM ledger at the moment of collection, entities generate a hard-to-fake digital record that drastically reduces inspection and verification costs for downstream industrial buyers and environmental regulators.

**Table 2: Traditional Certification vs. EcoTrace Protocol**

| Dimension | Traditional Certification Model | EcoTrace Protocol |
| :--- | :--- | :--- |
| **Data Source** | Self-reported by companies. | Cryptographically signed on-chain transactions. |
| **Verification Cost** | High (manual, periodic audits). | Low (continuous, automated validation). |
| **Transparency** | Opaque centralized databases. | Publicly queryable, permissionless read access. |
| **Risk of Manipulation** | High (susceptible to greenwashing). | Substantially mitigated via immutability. |

**Scalability Dynamics:**
1. **Near-Zero Marginal Infrastructure Cost (MC → 0):** Leveraging LACNet's open node network enables additional collection centers, municipalities, or industrial recyclers to join without incurring exponential server or licensing overhead.
2. **Positive Data Network Effects:** As more supply chain actors log batches on EcoTrace, the aggregate dataset increases in utility for national circular economy monitoring and carbon credit backing, encouraging further enterprise onboarding.

### 9. Future Roadmap & Post-Hackathon Projection
*This roadmap outlines the strategic scaling plan following the completion of the Hackathon.*

#### 📍 Phase 1: MVP & Testnet Deployment (Immediate / Hackathon)
* **Objective:** Deploy and validate core `EcoTrace.sol` functionality on LACNet Open Pro-Testnet.
* **Key Deliverables:** Complete smart contract code, execute successful testnet deployment, conduct end-to-end demo, and publish full open-source documentation.
* **Success Metric:** 100% test pass rate on core batch registration and retrieval functions; verified block explorer transactions.

#### 📍 Phase 2: Oracles & Hardware Integration (Short-to-Mid Term)
* **Objective:** Automate data entry to eliminate manual reporting errors at collection centers.
* **Key Deliverables:** Integrate IoT digital weighing scales directly with Web3 middleware; implement geographic Oracles to verify collection locations automatically.
* **Success Metric:** Successful automated batch registration pilot with a municipal collection partner in Lima.

#### 📍 Phase 3: Tokenomics & Enterprise Expansion (Mid-to-Long Term)
* **Objective:** Expand across Latin American supply chains and introduce incentive mechanics.
* **Key Deliverables:** Launch an incentive token layer for informal recyclers upon verified batch transformation; establish corporate enterprise dashboards for corporate ESG reporting.
* **Success Metric:** Onboarding of multiple industrial transformers across LATAM and integration into corporate ESG compliance reporting.

---

### 10. Alignment with Sustainable Development Goals (SDGs)
* **SDG 12: Responsible Consumption and Production:** Directly supports Target 12.5 by creating auditable mechanisms that verify waste reduction, recycling, and material reuse in industrial supply chains.
* **SDG 13: Climate Action:** Enhances transparency in corporate scope 3 emissions and waste tracking, strengthening confidence in environmental reporting and climate accounting.

---

### References
* Akerlof, G. A. (1970). The market for "lemons": Quality uncertainty and the market mechanism. *The Quarterly Journal of Economics*, 84(3), 488–500.
* Coase, R. H. (1960). The problem of social cost. *Journal of Law and Economics*, 3, 1–44[cite: 1].
* MINAM / ProActivo / RSE Perú (2024–2026). *Informes sobre Gestión de Residuos Sólidos y Formalización del Reciclaje en el Perú*[cite: 1].
* Samuelson, P. A. (1954). The pure theory of public expenditure. *Review of Economics and Statistics*, 36(4), 387–389[cite: 1].
* Spence, M. (1973). Job market signaling. *The Quarterly Journal of Economics*, 87(3), 355–374[cite: 1].
* United Nations (n.d.). *Sustainable Development Goals (SDG 12 & SDG 13)*[cite: 1].
