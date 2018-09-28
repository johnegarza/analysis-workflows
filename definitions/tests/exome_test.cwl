#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
label: "Test exome pipeline outputs for changes"

baseCommand: ["/bin/bash", "/usr/bin/test_outputs.sh"]

requirements:
    - class: DockerRequirement
      dockerPull: "johnegarza/exome_test_helper"

inputs:
    example_data_dir:
        type: string
        inputBinding:
            position: 1
    output_vcf:
        type: File
        inputBinding:
            position: 2
outputs: []
