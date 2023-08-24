
Alias: $smart = http://who.smart.codes/smart
Alias: $loinc = http://who.smart.codes/loinc
Alias: $snomed = http://who.smart.codes/snomed
Alias: $icd-10 = http://who.smart.codes/icd-10
Alias: $icd-11 = http://who.smart.codes/icd-11
Alias: $icf = http://who.smart.codes/icf
Alias: $ichi = http://who.smart.codes/ichi
Alias: $snomed-gps = http://who.smart.codes/smart-gps
Alias: $atc = http://who.smart.codes/atc

Profile: SGLogicalModel
Parent: StructureDefinition

* title 1..1
* publisher 1..1
* description 1..1
* kind = #logical
* differential
  * element
    * short 1..1
    * definition 1..1
    * code 
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "system"
      * ^slicing.rules = #open
      * ^slicing.ordered = false   // can be omitted, since false is the default
      * ^slicing.description = "Types of codes that the element corresponds to"
    * code contains 
       smart 1..1 MS and 
       loinc 0..1 MS and 
       snomed 0..1 MS and 
       icd-10 0..1 MS and 
       icd-11 0..1 MS and 
       icf 0..1 MS and 
       ichi 0..1 MS and 
       snomed-gps 0..1 MS and 
       atc 0..1 MS  

    * code[smart].system = $smart
    * code[loinc].system = $loinc
    * code[snomed].system = $snomed
    * code[icd-10].system = $icd-10
    * code[icd-11].system = $icd-11
    * code[icf].system = $icf
    * code[ichi].system = $ichi
    * code[snomed-gps].system = $snomed-gps  
    * code[atc].system = $atc

    * type 1..1

