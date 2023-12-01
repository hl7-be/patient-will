Logical: BeModelPatientWill
Description: "Logical model of the patient will"
* recordedDate 1..1 dateTime "Date of encoding of the information"
* identifier 0..1 Identifier "Unique identifier"
* patient 1..1 Identifier "Is the patient's unique identifier. The unique identifier must be the patient's national patient registry number (NISS) or BIS number."
* recorder 1..1 Identifier "Is the unique identifier of either the healthcare professional responsible for the encrypted content, or the patient encoding his or her own wishes, or a representative of the patient encoding the patient's wishes. The unique identifier must be the National Register Number (NISS) or BIS number."
//* Performer 0 .. 1 Identifier  "Is the unique identifier of the health professional making the statement. The unique identifier should be the National Registration Number (NISS) or BIS number of the practitioner."
* representative 0..* BackboneElement "The representative is the person who acts on behalf of the applicant (patient) when he is no longer able to express his wishes. For example: the confidant is the person who guides the patient through his steps and assists him during medical appointments. He guarantees the follow-up of the wishes of the patient when he can no longer express his wishes clearly."
* representative.role 0..1 CodeableConcept "Role of the representative (e.g. confidant, administrator, guardian...)"
* representative.relationship 0..1  CodeableConcept "Type of relationship of the representative with the patient (e.g. father, mother, son, neighbour...)"
//* witness 0..* Identifier "These are the witnesses. They are represented by their unique identification number. The unique identification number must be the national registration number (INSS) or the witness number. For example: in the context of the prior declaration regarding euthanasia, 2 witnesses are required."
* source[x] 0..1 Binary or url "Enables you to attach a document"
* category 0..1 CodeableConcept "Type of patient wishes."
* willCode 1..1 BackboneElement "patient's wishes" "The patient's wishes (euthanasia, no vaccination, no intubation...)"
* willCode.status 0..1 CodeableConcept "Indicates the status of the patient's will (draft, proposes, active, ...)"
* willCode.period 0..1 BackboneElement "Validity of the will"
* willCode.period.startperiod 0..1 dateTime "Date the will comes into effect"
* willCode.period.endperiod 0..1 dateTime "Date the will expires"
* note 0..1 string "Comments"