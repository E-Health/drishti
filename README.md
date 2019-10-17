# :eyes: Drishti | An mHealth sense-plan-act framework on FHIR!

## About 
Drishti is a conceptual extension of the [open mHealth](http://www.openmhealth.org/) model to behaviour intervention technology adopting the sense-plan-act paradigm from robotics. [:eyes: Drishti](https://github.com/E-Health/drishti) is also a reference implementation with the following components: 

* Drishti-sense  is open mhealth [shimmer](https://github.com/openmhealth/shimmer) that interfaces with various mobile frameworks and provides a uniform API.
* [Drishti-plan](https://github.com/dermatologist/drishti-plan) is a python flask API that provides a (FHIR) careplan based on aggregate data using AI.
* [Drishti-act](https://github.com/dermatologist/drishti-act) is a SMART-ON-FHIR application in Vue.js that can deliver the careplan to the mobile device as alerts and messages
* [Drishti-cog](https://github.com/dermatologist/drishti-cog) is the central hub and repository, integrating various services using FHIR as the interface standard.
* [Drishti-EMR](https://github.com/dermatologist/openmrs-module-drishti)  (openmrs-module-drishti) is an [OpenMRS module](https://wiki.openmrs.org/display/docs/Creating+Modules) that provide the user interface for clinicians.
* [Drishti-PHR](https://github.com/dermatologist/openmrs-module-drishti)  (openmrs-owa-drishti) is an [OpenMRS OWA](https://wiki.openmrs.org/display/docs/Open+Web+Apps+Module) that provide the user interface for patients, including authorizing access to their cloud services.

## [Read Paper](https://ieeexplore.ieee.org/document/8823907)

[![Drishti](https://raw.github.com/E-Health/drishti/develop/notes/drishti.png)](http://canehealth.com)


<p align="center">
  <i>Made in <a href="https://www.autodraw.com/share/3WCPLBQM5HMX">AutoDraw</a> as AI drawing experiment!</i>
</p>

## Instructions

* ***Drishti is not ready for use. The following instructions are only for those who want to contribute/join the project.***

* Rename resource-server-example.env to resource-server.env and add credentials

```
docker-compose -f docker-compose-prebuilt.yml up
```

## Features

* Drishti Uses Vue for frontend development. (Not Angular 1.x as in the OMH ecosystem)
* Drishti uses FHIR as the data model for data exchange and persistence. (Not the OMH format) 
* Drishti relies on [hGraph](http://hgraph.org/) for data visualization. 

## How to Use
* OpenMRS at /openmrs (of dockerhost)
* Drishti-cog at /
* Pull requests welcome to all sub-repositories.

[![OpenMRS](https://raw.github.com/E-Health/drishti/develop/notes/openmrs.png)](http://nuchange.ca)

## How to cite
Bell Raj Eapen, Norm Archer, Kamran Sartipi, and Yufei Yuan. 2019. Drishti: a sense-plan-act extension to open mHealth framework using FHIR. In Proceedings of the 1st International Workshop on Software Engineering for Healthcare (SEH '19). IEEE Press, Piscataway, NJ, USA, 49-52. DOI: https://doi.org/10.1109/SEH.2019.00016

```
@inproceedings{Eapen:2019:DSE:3353963.3353974,
 author = {Eapen, Bell Raj and Archer, Norm and Sartipi, Kamran and Yuan, Yufei},
 title = {Drishti: A Sense-plan-act Extension to Open mHealth Framework Using FHIR},
 booktitle = {Proceedings of the 1st International Workshop on Software Engineering for Healthcare},
 series = {SEH '19},
 year = {2019},
 location = {Montreal, Quebec, Canada},
 pages = {49--52},
 numpages = {4},
 url = {https://doi.org/10.1109/SEH.2019.00016},
 doi = {10.1109/SEH.2019.00016},
 acmid = {3353974},
 publisher = {IEEE Press},
 address = {Piscataway, NJ, USA},
 keywords = {FHIR, interoperability, mHealth},
} 

```
## Contributors
* [Bell Eapen](https://nuchange.ca) (McMaster U) |  [Contact](https://nuchange.ca/contact)
* See also:  [:fire: The FHIRForm framework for managing healthcare eForms](https://github.com/E-Health/fhirform)
