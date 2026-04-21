# Snakemake Tutorial Project

## Overview

This repository documents my completion of the official Snakemake tutorial and serves as an introduction to reproducible workflow design using Snakemake.

It focuses on learning how rule-based computational pipelines are structured, executed, and visualized using directed acyclic graphs (DAGs).

---

## Objectives

* Understand workflow automation using Snakemake
* Learn rule-based dependency management
* Explore reproducible computational pipelines
* Gain experience with DAG-based execution models

---

## Workflow Description

The pipeline processes input data through a series of structured Snakemake rules. Each rule defines explicit inputs, outputs, and commands, ensuring full reproducibility.

Key steps include:

* Data preprocessing and sorting
* Processing and transformation of inputs
* Generation of outputs and plots
* Visualization of workflow dependencies using DAG graphs

---

## Key Concepts Learned

* Rule-based workflow design
* Input/output dependency tracking
* Directed Acyclic Graph (DAG) execution model
* Reproducible computational environments
* Separation of scripts, data, and results

---

## Project Structure

```bash id="p4n1tq"
Snakefile
config.yaml
environment.yaml
data/
sorted_reads/
calls/
phylogeny/
plots/
scripts/
envs/
logs/
dag.svg
dagg.svg
dagg3.svg
snakemake/
snakemake-tutorial-data.tar.gz
```

### Component Explanation

* **Snakefile** → Main workflow definition containing all Snakemake rules
* **config.yaml** → Configuration file for parameters and paths
* **environment.yaml** → Software environment for reproducibility
* **data/** → Input datasets used in the workflow
* **sorted_reads/** → Processed sequencing reads after sorting
* **calls/** → Intermediate outputs from analysis steps
* **phylogeny/** → Phylogenetic or tree-related outputs (if generated)
* **plots/** → Generated figures and visual outputs
* **scripts/** → Custom scripts used within rules
* **envs/** → Rule-specific computational environments
* **logs/** → Execution logs for debugging and reproducibility
* **dag.svg / dagg.svg / dagg3.svg** → Workflow dependency graphs
* **snakemake/** → Internal or auxiliary Snakemake files
* **snakemake-tutorial-data.tar.gz** → Official tutorial dataset

---

## Workflow Visualization

The DAG files (`dag.svg`, `dagg.svg`, `dagg3.svg`) represent the structure of the workflow, showing how each rule depends on others and how data flows through the pipeline.

These visualizations are essential for understanding workflow logic and execution order.

---

## How to Run

```bash id="x9q2md"
snakemake -n     # dry run (check workflow without execution)
snakemake -j 4   # run workflow using 4 cores
```

---

## Key Takeaways

* Learned how Snakemake constructs reproducible workflows
* Understood rule dependencies and DAG execution
* Gained experience structuring computational pipelines
* Developed foundation for scalable bioinformatics workflows

---

## Scientific Context

This project provides foundational skills required for reproducible computational biology workflows, which are widely used in genomics, molecular epidemiology, and bioinformatics research.

Although initially based on a tutorial dataset, the workflow design is general and can be extended to real-world biological datasets in future work.

---

## Future Directions

This workflow is designed to be extendable toward:

* Microbial genomics pipelines
* Variant calling workflows (e.g., Snippy)
* Pangenome analysis (e.g., Roary)
* Phylogenetic reconstruction of bacterial populations
* Integration with tuberculosis genomic datasets

---

## Reference

Official Snakemake tutorial:
https://snakemake.readthedocs.io/en/stable/tutorial/tutorial.html
