// This is a comment
Alias: $SCT = http://snomed.info/sct // shorthand for any URL
Alias: $CAT = http://terminology.hl7.org/CodeSystem/observation-category
// Every FSH file consists of three parts:
// (1) Declaration 
Profile: EaseOfRespiration

// (2) Keywords
Parent: Observation
Id: ease-of-respiration
Title: "Ease of Respiration"
Description: "Profile for the ease of respiration observation"

// (3) Rules
* code = $SCT#248546008     // assignment rule
* category 1..* MS         // cardinality rule + must support flag
* value[x] only CodeableConcept // dataType rule
* value[x] from EaseOfRespirationVS (required) // binding rule