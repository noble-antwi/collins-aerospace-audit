# Collins Aerospace IT Audit Project

**Academic Project | Illinois Institute of Technology**  
**Course:** ITMM 586 - Information Technology Auditing  
**Semester:** Fall 2025  
**Instructor:** Professor Ann Rangarajan

---

## Overview

This repository documents a comprehensive IT audit engagement of Collins Aerospace's information security controls, completed as part of graduate coursework at IIT. The project demonstrates practical application of IT audit frameworks, risk assessment methodologies, and remediation planning.

---

## Repository Contents

```
assignments/               Course assignments (ethics, risk assessment, BC/DR)
docs/                      Audit findings and reports
findings/                  Individual finding documentation
methodology/               Audit planning and procedures
remediation/               Implementation roadmap
incident-analysis/         Attack timeline analysis
discussions/               Weekly course discussions
deliverables/              Executive presentation
```

---

## Course Assignments

### Assignment 1: Ethics & COBIT Framework Enhancement  
**Due:** September 18, 2025

- [Arthur Andersen Ethical Analysis](assignments/assignment-01-ethics-and-COBIT-AI-enahancement/Part-1-assignment-01-ethics/) – Professional code violations case study
- [COBIT 2019 AI Enhancement](assignments/assignment-01-ethics-and-COBIT-AI-enahancement/Part-2-assignment-01-cobit-enhancement/) – Framework enhancements for artificial intelligence

### Assignment 2: NIST Risk Assessment  
**Due:** September 29, 2025

[NIST SP 800-30 Risk Assessment](assignments/assignment-02-risk-assessment/) of University Banner Finance System:
- Three-tier risk methodology with threat modeling
- 8 complete NIST assessment tables
- 18 identified risks rated HIGH overall

### Assignment 3: Business Continuity & Disaster Recovery  
**Due:** November 4, 2025

[BC/DR Best Practices Presentation](assignments/assignment-03-disaster-recovery/) – 49-slide analysis:
- Real-world case study: CrowdStrike global outage (July 2024)
- Recovery objectives (RTO/RPO) and audit guidance
- Industry standards and testing best practices

---

## Final Project: Collins Aerospace Comprehensive Audit

Complete post-incident IT audit applying concepts from all assignments.

### 5 Key Findings

| # | Issue | Severity | Details |
|---|-------|----------|---------|
| 1 | Inadequate MFA | CRITICAL | [finding-01-MFA.md](findings/finding-01-MFA.md) – 60.5% of VPN accounts lack MFA |
| 2 | Privileged Access Gaps | HIGH | [finding-02-privileged-access.md](findings/finding-02-privileged-access.md) – No reviews in 30 months |
| 3 | Incident Response | HIGH | [finding-03-incident-response.md](findings/finding-03-incident-response.md) – 16-18 hour detection delay |
| 4 | Backup & DR | CRITICAL | [finding-04-backup-dr.md](findings/finding-04-backup-dr.md) – No air-gapped backups |
| 5 | Vendor Security | MEDIUM | [finding-05-vendor-security.md](findings/finding-05-vendor-security.md) – 47 vendors unassessed |

**Complete Report:** [docs/audit-findings-report.md](docs/audit-findings-report.md)

### Project Deliverables

| Deliverable | Location |
|-------------|----------|
| Audit Planning Memo | [methodology/audit-planning-memo.md](methodology/audit-planning-memo.md) |
| Executive Presentation | [deliverables/Collins-Aerospace-Audit-Presentation.pptx](deliverables/Collins-Aerospace-Audit-Presentation.pptx) |
| Control Testing Procedures | [methodology/control-testing-procedures.md](methodology/control-testing-procedures.md) |
| Remediation Roadmap | [remediation/roadmap.md](remediation/roadmap.md) |
| Incident Timeline | [incident-analysis/timeline.md](incident-analysis/timeline.md) |

### Key Metrics

- **Total Remediation Cost:** $4.5M - $5.9M
- **Compliance Risk:** CMMC Level 3 certification required Q2 2026; $2.3B in defense contracts at risk
- **Business Impact:** $15M+ direct incident costs; 217 flights cancelled; 2.8M transactions lost

---

## Frameworks Applied

- **COBIT 2019** – IT governance and management
- **NIST SP 800-30/53/171/172** – Risk assessment and security controls
- **CMMC 2.0** – Defense contractor cybersecurity requirements
- **ISO/IEC 27001:2022** – Information security management
- **COSO** – Internal control frameworks

---

## Weekly Discussion Topics

Throughout the semester, 12+ discussions reinforced audit concepts:

- Week 1: Introduction to IT Auditing
- Week 2: Auditor independence and objectivity
- Week 3: Professional certifications (CIA, CISA, CPA)
- Week 4: Enterprise Risk Management
- Week 5: SDLC audit integration
- Week 7: Service management
- Week 8: CrowdStrike incident analysis
- Week 9: Disaster recovery planning
- Week 10: ICS/OT security
- Week 11: FBI threat landscape
- Week 13: Social engineering and deepfakes
- Week 16: Course reflection

See [discussions/](discussions/) folder for details.

---

## Team

**Lead Auditor**  
Noble W. Antwi  
Master's in Cybersecurity & Digital Forensics | Illinois Institute of Technology

**Senior Auditor**  
Krupa Prakash Panchal  
Master's in Cybersecurity & Digital Forensics | Illinois Institute of Technology

**Instructor**  
Professor Ann Rangarajan | Illinois Institute of Technology

---

## License & Attribution

This is an academic project for educational purposes. See [ATTRIBUTION.md](ATTRIBUTION.md) for details.

**License:** MIT License – See [LICENSE](LICENSE) for details

---

**Last Updated:** December 22, 2025
