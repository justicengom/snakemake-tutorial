rule bcftools_call:
    input:
        fa="data/genome.fa",
        bam=expand("sorted_reads/{sample}.bam", sample=config["samples"]),
        bai=expand("sorted_reads/{sample}.bam.bai", sample=config["samples"])
    params:
        prior=config["prior_mutation_rate"]
    output:
        "calls/all.vcf.gz"
    log:
        "logs/bcftools_call.log"
    shell:
        """
        bcftools mpileup -f {input.fa} {input.bam} 2>> {log} | \
        bcftools call -mv -P {params.prior} -o {output} 2>> {log}
        """
rule index_vcf:
    input:
        "calls/all.vcf.gz"
    output:
        "calls/all.vcf.gz.csi"
    shell:
        "bcftools index {input}"
