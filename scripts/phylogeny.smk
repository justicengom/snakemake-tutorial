rule iqtree:
    input:
        "phylogeny/alignment.fasta"
    output:
        "phylogeny/tree.nwk"
    log:
        "logs/iqtree.log"
    conda:
        "../envs/phytree.yaml"
    shell:
        """
        iqtree -s {input} -nt AUTO -bb 1000 -quiet 2> {log}
        """
