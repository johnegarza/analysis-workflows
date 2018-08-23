#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
label: "bgzip VCF"
baseCommand: ["/opt/htslib/bin/bgzip"]
stdout: $(inputs.file.basename).gz
requirements:
    - class: DockerRequirement
      dockerPull: "mgibio/samtools-cwl:1.0.0"
arguments:
    ["-c"]
inputs:
    file:
        type: File
        inputBinding:
            position: 1
outputs:
    bgzipped_file:
        type: stdout

