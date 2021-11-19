# Get Human Gene

`Lean Project` for getting genes found in humans but not in mice (and vice versa) :baby: :mouse:

[human_gene_by_method.tsv](output/human_gene_by_source.tsv) is a table whose rows are the genes found in humans but not in mice (`human gene`s) and columns are methods: `Ensembl`, `MGI`, `2011 paper`, and `2019 paper`.

There is not a perfect method to identify `human gene`s.
So I tried 4 approaches, hoping that the genes consistently identified by more of the methods are more confident `human genes`s.
The last column of the table is the number of times `human gene`s are identified in the methods.
The `human gene` at the top is `DNAH10OS` which has the score of 4, meaning that all 4 methods identified it as a `human gene`.

### Methods

In 2 of the methods, I get `human gene`s already identified from a paper.
The papers are: [De Novo Origin of Human Protein-Coding Genes](https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1002379) (`2011 paper`) and [Genes with human-specific features are primarily involved with brain, immune and metabolic evolution](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-019-2886-2) (`2019 paper`).
`2011 paper` identified ~60 _de novo_ `human gene`s.
`2019 paper` identified ~900 `human gene`s.
Then, to make the gene symbols consistent, I update their `human gene` symbols to be `HGNC`.

In the other 2 methods, I rely on homologies to identify `human gene`s.
There is not a perfect method to identify homologies.
So I rely on human-mouse homologies maintained by 2 major, ongoing bioinformatics efforts: the Mosue Genome Informatics (`MGI`) and `Ensembl`.
In each method, I use their inferred homologies to select human protein-coding genes that do not have any homology.

### Mouce Gene

[mouse_gene_by_method.tsv](output/mouse_gene_by_source.tsv) is a table whose rows are the genes found in mice but not in humans (`mice gene`s) and columns are methods: `Ensembl` and `MGI`.

I repeat the same processes described above for mice.

## Howdy :wave: :cowboy_hat_face:

To report a bug, request a feature, or leave a comment (about anything related to this repository), just [submit an issue](https://github.com/KwatMDPhD/get_human_gene.pro/issues/new/choose).

---

**Lean Project** made by https://github.com/KwatMDPhD/LeanProject.jl
