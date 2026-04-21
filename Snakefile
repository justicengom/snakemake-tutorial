configfile: "config.yaml"

include: "scripts/mapping.smk"
include: "scripts/variantcalling.smk"
include: "scripts/qc.smk"
include: "scripts/phylogeny.smk"

rule all:
    input:
        "plots/quals.svg",
        "phylogeny/tree.nwk"
