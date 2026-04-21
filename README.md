# Snakemake Tutorial – Workflow Learning

## Overview

This repository documents my hands-on completion of the official Snakemake tutorial.

The goal was to understand:

* Workflow automation
* Rule-based execution
* Reproducibility in computational biology

## What I learned

* Writing and structuring a Snakefile
* Defining rules, inputs, outputs, and dependencies
* Running workflows with parallel execution
* Using dry runs and debugging tools

## Key commands used

```bash
snakemake -n
snakemake -j 4
```

## Structure

* `Snakefile`: main workflow
* `data/`: input files
* `results/`: generated outputs

## Next steps

This tutorial is being extended to real-world applications, including:

* Integration with Snippy for SNP calling
* Pangenome analysis with Roary
* Visualization using Nextstrain

## Reference

Official tutorial:
https://snakemake.readthedocs.io/en/stable/tutorial/tutorial.html
