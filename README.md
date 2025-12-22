# Collins Aerospace IT Audit Project
## Post-Incident Information Security Assessment

**Academic Project | Illinois Institute of Technology**  
**Course:** ITMM 586 - Information Technology Auditing  
**Semester:** Fall 2025  
**Instructor:** Professor Ann Rangarajan

---

## Executive Summary

This repository contains a comprehensive IT audit engagement of Collins Aerospace's information security controls following a September 2025 ransomware incident that disrupted the MUSE platform serving 170+ airports globally. The audit identified 5 significant findings across authentication, privileged access management, incident response, backup/disaster recovery, and vendor security management.

### Key Findings Overview

| Finding | Severity | Description | Target Remediation |
|---------|----------|-------------|-------------------|
| #1 | CRITICAL | Inadequate MFA Implementation | April 30, 2026 |
| #2 | HIGH | Insufficient Privileged Access Reviews | May 31, 2026 |
| #3 | HIGH | Inadequate Incident Response Capabilities | April 30, 2026 |
| #4 | CRITICAL | Inadequate Backup and Disaster Recovery | May 31, 2026 |
| #5 | MEDIUM | Insufficient Vendor Security Management | June 30, 2026 |

### Business Impact

- **$2.3 billion** in defense contracts at risk (CMMC Level 3 certification required Q2 2026)
- **$15+ million** in direct incident response costs
- **217 flights** cancelled during 7-day recovery period
- **2.8 million** passenger check-in transactions lost
- Material SOX control deficiencies identified

---

## Repository Structure

```
collins-aerospace-audit/
│
├── README.md                          # This file
├── LICENSE                            # MIT License
│
├── docs/                              # Complete audit documentation
│   ├── audit-findings-report.md       # Comprehensive 40+ page findings report
│   ├── presentation-structure.md      # 18-slide presentation talking points
│   ├── service-account-corrections.md # Technical clarifications on MFA findings
│   └── frameworks/                    # Framework reference materials
│       ├── COBIT-2019-overview.md
│       ├── NIST-SP-800-53-mapping.md
│       ├── CMMC-2.0-requirements.md
│       └── SOX-ITGC-controls.md
│
├── findings/                          # Individual finding documentation
│   ├── finding-01-MFA.md
│   ├── finding-02-privileged-access.md
│   ├── finding-03-incident-response.md
│   ├── finding-04-backup-dr.md
│   └── finding-05-vendor-security.md
│
├── deliverables/                      # Final presentation materials
│   ├── Collins-Aerospace-Audit-Presentation.pptx
│   └── presentation-notes.md
│
├── incident-analysis/                 # September 2025 attack documentation
│   ├── timeline.md
│   ├── root-cause-analysis.md
│   ├── impact-assessment.md
│   └── lessons-learned.md
│
├── remediation/                       # Remediation planning
│   ├── roadmap.md                     # 6-month remediation timeline
│   ├── investment-analysis.md         # Budget and ROI justification
│   └── governance-structure.md        # CMMC Program Office recommendations
│
├── methodology/                       # Audit approach documentation
│   ├── audit-plan.md
│   ├── control-testing-procedures.md
│   ├── sampling-methodology.md
│   └── risk-assessment-approach.md
│
└── references/                        # Supporting materials
    ├── industry-standards.md
    ├── regulatory-requirements.md
    └── bibliography.md
```

---

## Project Context

### Organization Profile

**Collins Aerospace Systems**
- Formed 2018 (UTC Aerospace + Rockwell Collins merger)
- Annual Revenue: $28.28 billion (34% of RTX Corporation)
- Employees: 80,000 globally
- Critical Infrastructure: MUSE platform serves 170+ airports worldwide

### Incident Overview

**Date:** September 19, 2025, 22:45 GMT  
**Attack Vector:** Compromised VPN credential without multi-factor authentication  
**Ransomware:** HardBit (Ransomware-as-a-Service)  
**Systems Affected:** 1,000+ systems encrypted  
**Detection Delay:** 16-18 hours  
**Recovery Time:** 7 days (Target RTO: 4 hours)  
**Direct Costs:** $15+ million  

### Audit Scope

**Engagement Period:** September - November 2025 (10 weeks)  
**Total Hours:** 485 hours across three phases  
**Control Objectives Tested:** 67 objectives across Information Security domain  
**Accounts Analyzed:** 247 user accounts, 89 privileged accounts  
**Systems Reviewed:** 156 backup systems, 34 critical infrastructure components  
**Vendors Assessed:** 47 third-party providers with production access  

---

## Frameworks Applied

This audit leveraged multiple industry-standard frameworks and regulatory requirements:

### Governance & Risk Management
- **COBIT 2019** - IT Governance framework
- **NIST Cybersecurity Framework** - Risk management approach
- **ISO/IEC 27001:2022** - Information security management

### Security Controls
- **NIST SP 800-53 Rev. 5** - Security and privacy controls
- **NIST SP 800-171 Rev. 2** - Controlled Unclassified Information (CUI) protection
- **NIST SP 800-172** - Enhanced security requirements for CUI

### Compliance Requirements
- **CMMC 2.0 Level 3** - Defense contractor cybersecurity certification
- **Sarbanes-Oxley Act (SOX) Section 404** - IT general controls
- **GDPR** - Data protection requirements (EU operations)

---

## Key Findings Summary

### Finding #1: Inadequate Multi-Factor Authentication (CRITICAL)

**Risk Rating:** Critical  
**CVSS Score:** 9.1 (Critical)

**Summary:** 60.5% of VPN accounts and 35.3% of privileged accounts lack multi-factor authentication. This gap directly enabled the September 2025 ransomware attack.

**Compliance Impact:**
- NIST SP 800-171 Control 3.5.3 violation
- CMMC 2.0 Level 2 gap (blocks Level 3 certification)
- SOX ITGC deficiency

**Business Impact:** Direct attack vector for $15M+ incident; $2.3B contracts at risk

---

### Finding #4: Inadequate Backup and Disaster Recovery (CRITICAL)

**Risk Rating:** Critical  
**CVSS Score:** 8.9 (High)

**Summary:** No air-gapped backups; 23% backup failure rate; last restoration test November 2022 (3 years ago). Ransomware encrypted backup infrastructure along with production systems.

**3-2-1-1-0 Backup Rule Compliance:**
- 3 Copies: FAIL
- 2 Media Types: FAIL
- 1 Off-site: FAIL
- 1 Air-gapped: FAIL
- 0 Errors: FAIL

**Status:** Meets ZERO of five requirements

**Compliance Impact:**
- NIST SP 800-172 Control 3.14.1e violation (Level 3 specific)
- CMMC 2.0 Level 3 gap
- SOX deficiency (geographic concentration risk)

**Business Impact:** 7-day recovery vs. 4-hour RTO; 2.8M transactions lost; $12-15M extended recovery costs

---

## Remediation Roadmap

### Timeline Overview

**Phase 1: Immediate Actions (0-30 Days)** - Target: December 31, 2025
- Emergency MFA deployment
- Air-gapped backup infrastructure procurement
- Privileged access emergency audit
- IR plan rapid update
- Vendor access review

**Phase 2: Short-Term Actions (30-90 Days)** - Target: March 31, 2026
- PAM solution deployment
- Off-site backup replication
- CSIRT formation and training
- First backup restoration test
- Vendor risk tiering framework

**Phase 3: Medium-Term Actions (90-180 Days)** - Target: June 30, 2026
- Zero Trust architecture implementation
- Immutable backup deployment
- SOAR platform deployment
- Business Impact Analysis
- TPRM platform deployment

### Investment Required

**Total First-Year Investment:** $4.5M - $5.9M

| Category | Amount | Details |
|----------|--------|---------|
| Technology Solutions | $2.8M - $3.5M | PAM, SOAR, TPRM, backup infrastructure |
| Additional Staffing | $850K - $1.2M/year | 8 FTEs (backup admins, CSIRT, analysts) |
| External Consultants | $600K - $900K | Forensics, CMMC assessment, Zero Trust design |
| Training & Awareness | $200K - $300K | IR training, certifications, awareness campaigns |

### Return on Investment

**Risk Mitigation Value:**
- Defense contracts protected: $2.3 billion
- Future incident prevention: $50-100 million
- Regulatory penalty avoidance: $10-25 million
- Insurance premium savings: $2-5 million annually
- Customer retention value: $100+ million

**Simple ROI:** Preventing 0.2% of potential losses justifies 100% of investment

---

## CMMC Level 3 Certification Risk

### Deadline: Q2 2026

**Requirement:** CMMC Level 3 certification mandatory for defense contracts handling CUI requiring protection against Advanced Persistent Threats.

**Current Status:** 4 of 5 findings directly violate CMMC requirements

| Finding | Level | Control Violated | Impact |
|---------|-------|------------------|---------|
| #1 MFA | Level 2 | NIST SP 800-171 3.5.3 | Blocks Level 2 certification |
| #2 Privileged Access | Level 2 & 3 | SP 800-171 3.1.5, SP 800-172 3.1.1e | Both levels affected |
| #3 Incident Response | Level 2 | IR.L2-3.6.1, IR.L2-3.6.2 | Operational capability gap |
| #4 Backup/DR | Level 3 | SP 800-172 3.14.1e | Direct Level 3 violation |
| #5 Vendor Security | Level 2 & 3 | CA.L2-3.12.2, SA.L2-3.13.1 | Supply chain gap |

**Assessment Process:**
1. Achieve perfect Level 2 certification (C3PAO assessment)
2. Remediate all gaps (no POA&M allowed)
3. Request Level 3 assessment from DIBCAC (government-led)
4. Pass on-site government evaluation
5. Certification valid for 3 years

**Risk:** Without immediate remediation, Collins Aerospace will not achieve certification by Q2 2026, jeopardizing $2.3 billion in defense contracts.

---

## Positive Findings

Not all findings were negative. Collins Aerospace demonstrates several areas of excellence:

### Technical Controls
- **Network Security:** Strong segmentation, properly configured DMZ, active IPS
- **Patch Management:** 94% compliance within 30 days (above industry average)
- **Encryption:** AES-256 data-at-rest encryption, TLS 1.2+ enforcement
- **Active Directory:** Well-structured OU design, proper GPO configuration
- **Physical Security:** Comprehensive badge access, CCTV monitoring

### Process & Culture
- **Security Awareness:** 98% training completion rate
- **Change Management:** Formal CAB with security review requirements
- **Vulnerability Management:** Quarterly scans, annual penetration testing
- **Documentation:** IT policies documented, architecture diagrams maintained

These strengths provide a solid foundation for remediation efforts.

---

## Academic Context

### Team Members

**Noble Antwi** - Lead IT Auditor  
Master's in Cybersecurity & Digital Forensics  
Illinois Institute of Technology

**Krupa Prakash Panchal** - Senior IT Auditor  
Master's in Cybersecurity & Digital Forensics  
Illinois Institute of Technology

### Course Information

**ITMM 586 - Information Technology Auditing**  
**Instructor:** Professor Ann Rangarajan  
**Institution:** Illinois Institute of Technology  
**Semester:** Fall 2025

### Assignment Deliverables

This project represents the culmination of three major assignments:

1. **Assignment 1:** Company Selection and Preliminary Analysis
2. **Assignment 2:** Audit Planning Memo and Risk Assessment
3. **Final Project:** Comprehensive Audit Findings Report and Executive Presentation

### Learning Objectives Demonstrated

- Application of IT audit frameworks (COBIT, NIST, CMMC)
- Risk assessment and control evaluation methodologies
- Root cause analysis techniques
- Remediation planning and business case development
- Executive communication and presentation skills
- Understanding of regulatory compliance requirements
- Integration of technical controls with business objectives

---

## Technical Specifications

### Documentation Standards

All documentation in this repository adheres to:
- APA 7th Edition citation format
- IEEE Technical Writing Standards
- NIST Special Publication 800-161 (Supply Chain Risk Management)
- ISO/IEC 27001:2022 documentation requirements

### Control Testing Approach

Testing methodology based on:
- AICPA Trust Services Criteria (TSC)
- ISACA COBIT 2019 Assessment Programme
- NIST SP 800-53A Rev. 5 Assessment Procedures
- IIA International Standards for the Professional Practice of Internal Auditing

### Risk Rating Methodology

Risk ratings calculated using:
- NIST SP 800-30 Rev. 1 Risk Assessment methodology
- CVSS v3.1 scoring for technical vulnerabilities
- Business impact analysis based on ISO 22301
- Likelihood and impact matrix (5x5 scale)

---

## Usage & Contribution

### For Academic Use

This repository serves as a reference for graduate-level IT auditing projects. Students and educators may use this as:

- Example of comprehensive audit documentation
- Template for audit report structure
- Reference for applying multiple frameworks
- Case study for risk assessment and remediation planning

### Citation

If referencing this work in academic contexts:

```
Antwi, N., & Panchal, K. P. (2025). Collins Aerospace IT Audit Project: 
Post-Incident Information Security Assessment. Illinois Institute of Technology. 
Retrieved from https://github.com/[username]/collins-aerospace-audit
```

### Attribution

While this is an academic project based on publicly available information about a real company, the specific audit findings, testing results, and recommendations are hypothetical and created for educational purposes.

---

## Disclaimers

### Academic Project Notice

This is an academic project completed as part of graduate coursework at Illinois Institute of Technology. While based on publicly available information about Collins Aerospace and industry best practices, the specific audit findings, test results, and internal details are hypothetical and created for educational purposes.

### No Actual Audit Relationship

This project does not represent an actual audit engagement with Collins Aerospace or RTX Corporation. No confidential or proprietary information was accessed. All analysis is based on:

- Publicly available SEC filings
- Public news reports of the September 2025 incident
- Industry standard security frameworks
- Academic research and case study methodology

### Educational Purpose

The findings, recommendations, and business impacts described are educational exercises demonstrating application of IT auditing principles. They should not be construed as actual security assessments or recommendations for Collins Aerospace.

---

## License

This project is licensed under the MIT License - see the LICENSE file for details.

### MIT License Summary

Permission is granted to use, copy, modify, and distribute this documentation for academic and educational purposes, with appropriate attribution.

---

## Contact Information

### Project Team

**Noble Antwi**  
Illinois Institute of Technology  
Master's in Cybersecurity & Digital Forensics  

**Krupa Prakash Panchal**  
Illinois Institute of Technology  
Master's in Cybersecurity & Digital Forensics  

### Course Instructor

**Professor Ann Rangarajan**  
Illinois Institute of Technology  
ITMM 586 - Information Technology Auditing

---

## Acknowledgments

This project was completed with guidance from:

- Professor Ann Rangarajan, Illinois Institute of Technology
- ITMM 586 course materials and resources
- ISACA COBIT 2019 framework documentation
- NIST Cybersecurity Framework and Special Publications
- CMMC Accreditation Body public guidance
- Academic research on post-incident analysis methodologies

Special recognition to the IT auditing and cybersecurity professional community for developing the frameworks and standards that guided this analysis.

---

## Version History

**Version 1.0** - December 2025  
Initial release containing complete audit documentation, findings report, and presentation materials.

---

**Last Updated:** December 2, 2025  
**Repository Maintainer:** Noble Antwi

---

## Assignment Deliverables

This repository documents the complete audit engagement across three major assignments:

### Assignment 1: Company Selection
Selection of Collins Aerospace as audit subject with preliminary risk assessment and business context analysis.

### Assignment 2: Audit Planning Memo
**Location:** `methodology/audit-planning-memo.md`

Comprehensive audit planning memorandum presented to executive leadership outlining:
- Audit objectives and scope
- Key risk areas identified (CMMC, ransomware, ICS security, vendor risk, SOX)
- Audit methodology and approach
- Timeline and resource requirements (12 weeks, $271,000 investment)
- Expected deliverables and reporting structure

The memo addresses critical compliance requirements including CMMC Level 3 certification (Q2 2026 deadline, $2.3B contracts at risk) and SOX Section 404 IT general controls.

### Assignment 3: Final Audit Report and Presentation
**Report Location:** `docs/audit-findings-report.md`  
**Presentation Location:** `deliverables/Collins-Aerospace-Audit-Presentation.pptx`

Complete post-incident audit following September 2025 ransomware attack:
- 5 significant findings (2 Critical, 2 High, 1 Medium)
- Comprehensive root cause analysis
- $4.5-5.9M remediation investment requirements
- 6-month implementation roadmap
- CMMC compliance gap analysis
- Executive presentation materials

---


---

## Project Team and Acknowledgments

### Audit Team

**Lead IT Auditor:**  
Noble Antwi  
Master's in Cybersecurity & Digital Forensics  
Illinois Institute of Technology  
Email: nantwi@hawk.iit.edu

**Senior IT Auditor:**  
Krupa Prakash Panchal  
Master's in Cybersecurity & Digital Forensics  
Illinois Institute of Technology  
Email: kpanchal@hawk.iit.edu

### Academic Supervision

**Course Instructor:**  
Professor Ann Rangarajan  
Illinois Institute of Technology  
ITMM 586 - Information Technology Auditing

**Institution:**  
Illinois Institute of Technology  
College of Computing  
Master's Program in Cybersecurity & Digital Forensics

### Acknowledgments

This comprehensive IT audit project would not have been possible without the guidance and support of several individuals and organizations:

**Professor Ann Rangarajan** deserves special recognition for her exceptional instruction in IT auditing principles, frameworks, and methodologies. Her emphasis on practical application of theoretical concepts, real-world case studies, and professional standards shaped our approach to this audit engagement. The knowledge gained from ITMM 586 provided the foundation for every aspect of this work.

**Krupa Prakash Panchal**, my audit partner throughout this engagement, contributed significantly to the planning, fieldwork, and reporting phases. The collaboration demonstrated in this repository reflects our joint commitment to audit excellence and professional standards.

**Illinois Institute of Technology** provided the academic environment and resources necessary to pursue graduate-level study in cybersecurity and IT auditing. The program's focus on emerging technologies, risk management, and governance frameworks directly enabled this comprehensive analysis.

**Industry Organizations** whose frameworks and standards guided our work:
- **ISACA** for COBIT 2019 and professional ethics standards
- **NIST** for Special Publications 800-30, 800-53, 800-171, 800-172 and the Cybersecurity Framework
- **Cybersecurity Maturity Model Certification (CMMC) Accreditation Body** for CMMC 2.0 guidance
- **AICPA** for audit methodologies and professional standards
- **IIA (Institute of Internal Auditors)** for GTAG guidance

**Professional Community** - The IT auditing and cybersecurity community whose shared knowledge, best practices, and lessons learned from real-world incidents informed our recommendations and analysis.

### Special Thanks

To our families, friends, and colleagues who supported us throughout this intensive academic project, thank you for your patience and encouragement.

---

## Dedication

This work is dedicated to all IT audit professionals working to strengthen cybersecurity postures, protect critical infrastructure, and ensure organizational resilience in an increasingly complex threat landscape. May this repository serve as a useful reference and contribute to the continuous improvement of our profession.

---
