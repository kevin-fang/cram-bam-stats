$namespaces:
  dx: https://www.dnanexus.com/cwl#
arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
- sentinel_parallel=multi-combined
- sentinel_outputs=qc_rec:resources;description;metadata__phenotype;config__algorithm__qc;config__algorithm__tools_on;config__algorithm__variant_regions;metadata__batch;genome_build;reference__fasta__base;config__algorithm__coverage_interval;reference__versions;config__algorithm__tools_off;analysis;align_bam;config__algorithm__variant_regions_merged;config__algorithm__coverage;config__algorithm__coverage_merged;depth__samtools__stats;depth__samtools__idxstats;depth__variant_regions__regions;depth__variant_regions__dist;depth__sv_regions__regions;depth__sv_regions__dist;depth__coverage__regions;depth__coverage__dist;depth__coverage__thresholds
- sentinel_inputs=align_bam:var,analysis:var,reference__fasta__base:var,reference__versions:var,config__algorithm__tools_on:var,config__algorithm__tools_off:var,genome_build:var,config__algorithm__qc:var,metadata__batch:var,metadata__phenotype:var,config__algorithm__coverage_interval:var,depth__variant_regions__regions:var,depth__variant_regions__dist:var,depth__samtools__stats:var,depth__samtools__idxstats:var,depth__sv_regions__regions:var,depth__sv_regions__dist:var,depth__coverage__regions:var,depth__coverage__dist:var,depth__coverage__thresholds:var,config__algorithm__variant_regions:var,config__algorithm__variant_regions_merged:var,config__algorithm__coverage:var,config__algorithm__coverage_merged:var,resources:var,description:var
- run_number=0
baseCommand:
- bcbio_nextgen.py
- runfn
- qc_to_rec
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-vc
  dockerPull: quay.io/bcbio/bcbio-vc
- class: ResourceRequirement
  coresMin: 1
  outdirMin: 236498
  ramMin: 3072
  tmpdirMin: 113129
- class: dx:InputResourceRequirement
  indirMin: 0
inputs:
- id: align_bam
  secondaryFiles:
  - .bai
  type:
    items:
    - File
    - 'null'
    type: array
- id: analysis
  type:
    items: string
    type: array
- id: reference__fasta__base
  secondaryFiles:
  - .fai
  - ^.dict
  type:
    items: File
    type: array
- id: reference__versions
  type:
    items: File
    type: array
- id: config__algorithm__tools_on
  type:
    items:
    - 'null'
    - items: 'null'
      type: array
    type: array
- id: config__algorithm__tools_off
  type:
    items:
    - 'null'
    - items: 'null'
      type: array
    type: array
- id: genome_build
  type:
    items: string
    type: array
- id: config__algorithm__qc
  type:
    items:
      items: string
      type: array
    type: array
- id: metadata__batch
  type:
    items:
    - 'null'
    - string
    type: array
- id: metadata__phenotype
  type:
    items: string
    type: array
- id: config__algorithm__coverage_interval
  type:
    items:
    - string
    - 'null'
    type: array
- id: depth__variant_regions__regions
  type:
    items:
    - File
    - 'null'
    type: array
- id: depth__variant_regions__dist
  type:
    items:
    - File
    - 'null'
    type: array
- id: depth__samtools__stats
  type:
    items:
    - File
    - 'null'
    type: array
- id: depth__samtools__idxstats
  type:
    items:
    - File
    - 'null'
    type: array
- id: depth__sv_regions__regions
  type:
    items:
    - File
    - 'null'
    type: array
- id: depth__sv_regions__dist
  type:
    items:
    - File
    - 'null'
    type: array
- id: depth__coverage__regions
  type:
    items:
    - File
    - 'null'
    type: array
- id: depth__coverage__dist
  type:
    items:
    - File
    - 'null'
    type: array
- id: depth__coverage__thresholds
  type:
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__variant_regions
  type:
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__variant_regions_merged
  type:
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__coverage
  type:
    items:
    - File
    - 'null'
    type: array
- id: config__algorithm__coverage_merged
  type:
    items:
    - File
    - 'null'
    type: array
- id: resources
  type:
    items: string
    type: array
- id: description
  type:
    items: string
    type: array
outputs:
- id: qc_rec
  type:
    items:
      fields:
      - name: resources
        type: string
      - name: description
        type: string
      - name: metadata__phenotype
        type: string
      - name: config__algorithm__qc
        type:
          items: string
          type: array
      - name: config__algorithm__tools_on
        type:
        - 'null'
        - items: 'null'
          type: array
      - name: config__algorithm__variant_regions
        type:
        - File
        - 'null'
      - name: metadata__batch
        type:
        - 'null'
        - string
      - name: genome_build
        type: string
      - name: reference__fasta__base
        type: File
      - name: config__algorithm__coverage_interval
        type:
        - string
        - 'null'
      - name: reference__versions
        type: File
      - name: config__algorithm__tools_off
        type:
        - 'null'
        - items: 'null'
          type: array
      - name: analysis
        type: string
      - name: align_bam
        type:
        - File
        - 'null'
      - name: config__algorithm__variant_regions_merged
        type:
        - File
        - 'null'
      - name: config__algorithm__coverage
        type:
        - File
        - 'null'
      - name: config__algorithm__coverage_merged
        type:
        - File
        - 'null'
      - name: depth__samtools__stats
        type:
        - File
        - 'null'
      - name: depth__samtools__idxstats
        type:
        - File
        - 'null'
      - name: depth__variant_regions__regions
        type:
        - File
        - 'null'
      - name: depth__variant_regions__dist
        type:
        - File
        - 'null'
      - name: depth__sv_regions__regions
        type:
        - File
        - 'null'
      - name: depth__sv_regions__dist
        type:
        - File
        - 'null'
      - name: depth__coverage__regions
        type:
        - File
        - 'null'
      - name: depth__coverage__dist
        type:
        - File
        - 'null'
      - name: depth__coverage__thresholds
        type:
        - File
        - 'null'
      name: qc_rec
      type: record
    type: array
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
