#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
label: 'BAM to CRAM conversion'
baseCommand: ["/opt/samtools/bin/samtools", "view", "-C"]
stdout: "final.cram"
requirements:
    - class: DockerRequirement
      dockerPull: "mgibio/samtools-cwl:1.0.0"
inputs:
    reference:
        type: string
        inputBinding:
            prefix: "-T"
            position: 1
    bam:
        type: File
        inputBinding:
            position: 2
outputs:
    cram:
        type: stdout
