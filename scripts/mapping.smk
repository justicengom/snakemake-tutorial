rule bwa_map:
    input:
        ref="data/genome.fa",
        fq=lambda wc: config["samples"][wc.sample]
    output:
        temp("mapped_reads/{sample}.bam")
    params:
        rg="@RG\\tID:{sample}\\tSM:{sample}"
    log:
        "logs/bwa_mem/{sample}.log"
    threads: 8
    shell:
        """
        bwa mem -R '{params.rg}' -t {threads} {input.ref} {input.fq} 2> {log} | \
        samtools view -Sb - > {output}
        """

rule samtools_sort:
    input:
        "mapped_reads/{sample}.bam"
    output:
        "sorted_reads/{sample}.bam"
    log:
        "logs/sort/{sample}.log"
    shell:
        "samtools sort -o {output} {input} 2> {log}"

rule samtools_index:
  input:
      "sorted_reads/{sample}.bam"
  output:
      "sorted_reads/{sample}.bam.bai"
  log:
      "logs/samtools_index/{sample}.log",
  params:
      extra="",  # optional params string
  wrapper:
      "v8.1.1/bio/samtools/index"
