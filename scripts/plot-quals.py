import matplotlib
matplotlib.use("Agg")

import matplotlib.pyplot as plt
from pysam import VariantFile

# Read VCF and extract QUAL scores (ignore missing values)
vcf = VariantFile(snakemake.input[0])
quals = [record.qual for record in vcf if record.qual is not None]

# Create histogram
plt.figure(figsize=(8, 5))
plt.hist(quals, bins=50, alpha=0.7, label="Variant QUAL scores")

# Add labels and title
plt.xlabel("QUAL score")
plt.ylabel("Frequency")
plt.title("Distribution of Variant Quality Scores")

# Add legend
plt.legend()

# Improve layout
plt.tight_layout()

# Save figure
plt.savefig(snakemake.output[0])
plt.close()
