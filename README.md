# :eyes: Drishti | An mHealth sense-plan-act framework!

## About
Drishti is a conceptual extension of the [open mHealth](http://www.openmhealth.org/) model to behaviour intervention technology adopting the sense-plan-act paradigm from robotics. [:eyes: Drishti](https://github.com/E-Health/drishti) is also a reference implementation with the following components: 

* Drishti-sense  is open mhealth [shimmer](https://github.com/openmhealth/shimmer) that interfaces with various mobile frameworks and provides a uniform API.
* [Drishti-plan](https://github.com/dermatologist/drishti-plan) is a python flask API that provides a (FHIR) careplan based on aggregate data using AI.
* [Drishti-act](https://github.com/dermatologist/drishti-act) is a SMART-ON-FHIR application in Vue.js that can deliver the careplan to the mobile device as alerts and messages
* [Drishti-cog](https://github.com/dermatologist/drishti-cog) is the central hub and repository, integrating various services using FHIR as the interface standard.
* [Drishti-EMR](https://github.com/dermatologist/openmrs-owa-drishti) is an [OpenMRS](https://openmrs.org) OWA and an OpenMRS module that provides the user interface for both clinicians (module) and patients (OWA)

## Instructions

* Rename resource-server-example.env to resource-server.env and add credentials


## Drishti is work in progress and is not ready for use.
*  [Contact](https://nuchange.ca/contact)
[![Drishti](https://raw.github.com/E-Health/drishti/develop/notes/drishti.png)](http://canehealth.com)
* Currently working on [Drishti-cog](https://github.com/dermatologist/drishti-cog) and [Drishti-EMR](https://github.com/dermatologist/openmrs-owa-drishti)

## Contributors
* [Bell Eapen](https://nuchange.ca) (McMaster U)

