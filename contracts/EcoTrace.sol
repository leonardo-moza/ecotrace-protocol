// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/// @title EcoTrace Protocol
/// @notice Immutable registry of recycling batches for transparent, auditable supply chain traceability.
/// @dev Deployed on LACNet Open Pro-Testnet (EVM-compatible).
contract EcoTrace {

    /// @notice Structure representing a single recycling batch.
    struct Batch {
        uint256 id;          // Unique batch identifier
        string material;     // e.g. "PET", "HDPE", "Cardboard"
        uint256 weightInKg;  // Weight of the batch, in kilograms
        string location;     // Origin location (e.g. district, plant)
        address registeredBy;// Wallet address that submitted the batch
        uint256 timestamp;   // Block timestamp of registration
    }

    /// @dev Sequential counter used to assign unique batch IDs.
    uint256 private nextBatchId;

    /// @dev Core storage: batch ID => Batch data.
    mapping(uint256 => Batch) private batches;

    /// @notice Emitted whenever a new batch is successfully registered.
    event BatchRegistered(
        uint256 indexed id,
        string material,
        uint256 weightInKg,
        string location,
        address indexed registeredBy
    );

    /// @notice Registers a new recycling batch on-chain.
    function registerBatch(
        string calldata material,
        uint256 weightInKg,
        string calldata location
    ) external returns (uint256 id) {
        require(weightInKg > 0, "EcoTrace: weight must be greater than zero");
        require(bytes(material).length > 0, "EcoTrace: material required");

        id = nextBatchId;
        batches[id] = Batch({
            id: id,
            material: material,
            weightInKg: weightInKg,
            location: location,
            registeredBy: msg.sender,
            timestamp: block.timestamp
        });

        nextBatchId++;
        emit BatchRegistered(id, material, weightInKg, location, msg.sender);
    }

    /// @notice Retrieves the full record of a previously registered batch.
    function getBatch(uint256 id) external view returns (Batch memory) {
        require(id < nextBatchId, "EcoTrace: batch does not exist");
        return batches[id];
    }

    /// @notice Returns the total number of batches registered on-chain.
    function totalBatches() external view returns (uint256) {
        return nextBatchId;
    }
}
