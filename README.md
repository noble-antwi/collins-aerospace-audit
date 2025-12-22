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

## Complete Academic Portfolio - Fall 2025 Semester

This repository represents the culmination of a comprehensive semester of IT auditing coursework at Illinois Institute of Technology, progressing from foundational ethics and frameworks through risk assessment and disaster recovery analysis to a real-world post-incident audit.

### Course Deliverables Timeline

**September 17, 2025:** [Assignment 1 - Ethics & COBIT Enhancement](assignments/assignment-01-ethics/) (100 points)
- **Part 1:** Arthur Andersen ethical analysis (650 words) - ISACA/AICPA code violations, independence failures
- **Part 2:** COBIT 2019 AI enhancement (2,621 words) - 10 objectives across 5 domains, AI governance frameworks

**September 29, 2025:** [Assignment 2 - NIST Risk Assessment](assignments/assignment-02-risk-assessment/) (100 points)  
- University Banner Finance System comprehensive risk assessment (30-page PDF)
- NIST SP 800-30 three-tier methodology - 18 risks identified (HIGH rating)
- 8 complete NIST tables - threat sources, vulnerabilities, impacts, risk scenarios

**November 4, 2025:** [Assignment 3 - BC/DR Presentation](assignments/assignment-03-disaster-recovery/) (100 points)
- Business Continuity and Disaster Recovery best practices presentation (49 slides)
- Real-world disaster analysis and lessons learned
- Industry standards and IT audit guidance for BC/DR programs

**November 2025:** **Final Project - Collins Aerospace Comprehensive Audit** (200 points)
- Post-ransomware incident audit (September 2024 attack)
- 40+ page report, 18-slide presentation
- 5 findings with $4.5M+ remediation costs
- Defense contractor context (CMMC Level 3 certification)

### Weekly Discussions Integration

Throughout the semester, [12+ weekly discussions](discussions/) (3,600+ words, 50+ citations) reinforced concepts:
- **Week 3:** Professional certifications (CIA, CISA, CPA) and organizations (IIA, AICPA, ISACA)
- **Week 4:** Enterprise Risk Management terminology and cyber insurance adoption
- **Week 5:** IT audit integration in SDLC - "part art and part science"
- **Week 7:** Service management tools and problem management processes
- **Week 8:** CrowdStrike incident analysis (October) - Configuration management lessons
- **Week 9:** Disaster recovery planning - 8 DRP components, RTO/RPO concepts
- **Week 10:** ICS/OT security - Physical consequences, IEC 62443 standards
- **Week 11:** FBI threat landscape - Infrastructure targeting, audit tools
- **Week 13:** Social engineering - Deepfakes, $25M Arup scam, AI-powered attacks
- **Week 16:** Course reflection and future learning interests

### Learning Progression Demonstrated

```
ETHICS & GOVERNANCE (Assignment 1)
↓ Established principles of auditor independence and framework enhancement
RISK ASSESSMENT SKILLS (Assignment 2)  
↓ Developed NIST-based threat modeling and risk quantification
BC/DR ANALYSIS (Assignment 3)
↓ Examined disaster response and recovery planning best practices
COMPREHENSIVE AUDIT (Final Project)
↓ Applied all concepts to real-world post-incident assessment
```

### Direct Application - Theory to Practice

| Course Learning | Collins Aerospace Application |
|-----------------|-------------------------------|
| **Week 8 Discussion:** CrowdStrike testing failures | **Finding #3:** Incident Response - Detection/communication gaps |
| **Week 9 Discussion:** DRP components, 3-2-1-1-0 rule | **Finding #4:** Backup/DR - No air-gapped backups |
| **Week 11 Discussion:** FBI threats, audit tools | **Audit Planning:** Threat modeling, tool selection |
| **Week 13 Discussion:** Social engineering, MFA | **Finding #1:** MFA implementation weaknesses |
| **Assignment 2:** NIST SP 800-30 methodology | **Audit Memo:** Three-tier risk assessment framework |
| **Assignment 3:** BC/DR best practices and testing | **Finding #4:** Recovery capabilities and backup strategy |

### Academic Rigor & Professional Quality

**Total Coursework Documentation:**
- **23,000+ words** of technical analysis across assignments and discussions
- **50+ academic and industry sources** properly cited (APA format)
- **Multiple frameworks applied:** NIST SP 800-30/34/53, COBIT 2019, IEC 62443, ISO 22301, CMMC 2.0
- **Professional deliverables:** Executive summaries, risk tables, presentations, comprehensive audit reports
- **Authentic student voice:** Personal reflection integrated with technical rigor

### Repository Value Proposition

**For Employers:**
- Complete semester progression from theory to practice
- Real-world audit execution demonstrated (Collins Aerospace)
- Multiple framework proficiencies (NIST, COBIT, CMMC, SOX)
- Professional technical writing and presentation skills
- Team collaboration evidence (partner: Krupa Prakash Panchal)

**For Academic Portfolio:**
- Comprehensive coursework documentation with cross-references
- Progressive skill development clearly demonstrated  
- Research and citation rigor (50+ sources)
- Professional presentation and communication skills

**For Professional Development:**
- Knowledge repository for future reference
- Methodology templates (NIST risk assessment, audit planning)
- Framework application examples (COBIT enhancement, CMMC analysis)
- Case study library (CrowdStrike, Collins Aerospace, Arthur Andersen)

---

## Project Context

### Organization Profile

**Collins Aerospace Systems**
- Formed 2018 (UTC Aerospace + Rockwell Collins merger)
- Annual Revenue: $28.28 billion (34% of RTX Corporation)
- Employees: 80,000 globally
- Critical Infrastructure: MUSE platform serves 170+ airports worldwide

#
## Assignment Deliverables - Complete Coursework

This repository contains **ALL coursework** from ITMM 586 - Information Technology Auditing, Fall 2025:

### Assignment 1: Professional Ethics and Framework Enhancement

#### Part 1: Arthur Andersen Case Study - Ethical Analysis (50 points)
**Location:** [`assignments/assignment-01-ethics/arthur-andersen-ethical-analysis.md`](assignments/assignment-01-ethics/arthur-andersen-ethical-analysis.md)

**Deliverable:** 650-word critical analysis mapping ethical violations to professional codes

**Content:**
- Analysis of Arthur Andersen's collapse and ethical failures
- Violations of ISACA Code of Professional Ethics
- Violations of AICPA Professional Responsibilities
- Case study evidence: Waste Management, Enron, document destruction
- Independence and objectivity failures
- Professional competence and due care violations
- Integrity breaches and pattern of misconduct
- Lessons learned for IT auditing profession
- Post-Enron regulatory changes (Sarbanes-Oxley Act)

**Skills Demonstrated:** Ethical reasoning, case study analysis, professional standards application, critical thinking

---

#### Part 2: COBIT 2019 Framework Enhancement for AI Era (50 points)
**Location:** [`assignments/assignment-02-cobit-enhancement/`](assignments/assignment-02-cobit-enhancement/)

**Deliverable:** Enhancement proposals for 10 COBIT objectives (100-150 words each)

**Content:**
- **EDM Domain:** AI ethics governance, AI risk and opportunity management
- **APO Domain:** AI-driven innovation, AI model risk management  
- **BAI Domain:** AI solution development, AI models and data assets management
- **DSS Domain:** AI-augmented operations, AI security and adversarial protection
- **MEA Domain:** AI performance monitoring, AI audit and assurance
- Framework gap analysis for artificial intelligence
- Implementation roadmap for enhanced objectives

**Skills Demonstrated:** Framework analysis, technology trend assessment, governance design, AI risk management

---

### Assignment 2: Collins Aerospace Audit Engagement Planning

#### Part 1: Company Selection and Preliminary Analysis
**Deliverable:** Selection justification and business context

**Content:**
- Selected Collins Aerospace following September 19, 2025 ransomware attack
- Business profile: RTX subsidiary, 80,000 employees, $28.28B annual revenue
- Attack impact: 217 flights cancelled, 170+ airports affected, $15M+ costs
- Strategic importance: $2.3B defense contracts requiring CMMC Level 3
- Initial risk assessment identifying critical control gaps

---

#### Part 2: Audit Planning Memorandum
**Location:** [`methodology/audit-planning-memo.md`](methodology/audit-planning-memo.md)

**Deliverable:** Executive memorandum for 12-week audit engagement

**Content:**
- **Executive Summary:** $271,000 investment, $10-50M loss prevention potential
- **Business Context:** Collins Aerospace operations and strategic position
- **Four Primary Objectives:** Operational resilience, cybersecurity posture, regulatory compliance, governance review
- **Detailed Scope:** IT systems (corporate infrastructure, IAM, backup/DR) and OT systems (MES, ICS/SCADA)
- **Five Key Risk Areas:** 
  - CMMC compliance gap (CRITICAL)
  - Ransomware/business continuity (HIGH)
  - ICS security (HIGH)
  - Vendor/supply chain (MEDIUM-HIGH)
  - SOX ITGC (MEDIUM)
- **Methodology:** COBIT 2019, NIST SP 800-53/171/172, ISO/IEC 62443, COSO
- **Timeline:** 12 weeks (Planning → Fieldwork → Reporting)
- **Resources:** 960 internal hours + 160 specialist hours
- **Budget Breakdown:** Detailed cost justification

**Skills Demonstrated:** Audit planning, risk assessment, resource allocation, executive communication, stakeholder management

---

### Assignment 3: Final Audit Engagement - Findings and Remediation

#### Part 1: Comprehensive Audit Findings Report
**Location:** [`docs/audit-findings-report.md`](docs/audit-findings-report.md)

**Deliverable:** 40+ page professional audit report with 5 significant findings

**Findings Summary:**

1. **Finding #1: Inadequate Multi-Factor Authentication (CRITICAL)**
   - Location: [`findings/finding-01-MFA.md`](findings/finding-01-MFA.md)
   - CVSS 9.1 - Direct cause of September ransomware attack
   - 60.5% of VPN accounts lack MFA; 35.3% privileged accounts without MFA
   - CMMC Level 2 violation; $2.3B contracts at risk
   - Remediation: $800K-$1.2M PAM solution + emergency MFA deployment

2. **Finding #2: Insufficient Privileged Access Management (HIGH)**
   - Location: [`findings/finding-02-privileged-access.md`](findings/finding-02-privileged-access.md)
   - CVSS 7.8 - No privileged access reviews in 30 months
   - 47 accounts with permanent admin privileges; 12 orphaned accounts
   - CMMC Level 3 violation (3.1.1e)
   - Remediation: Quarterly reviews + PAM + IGA solution ($1.3M-$2.0M)

3. **Finding #3: Inadequate Incident Response Capabilities (HIGH)**
   - Location: [`findings/finding-03-incident-response.md`](findings/finding-03-incident-response.md)
   - CVSS 7.5 - 16-18 hour detection delay enabled attack spread
   - No dedicated CSIRT; IR plan outdated (2021); no 24/7 SOC
   - CMMC Level 2 violation (IR.L2-3.6.1, IR.L2-3.6.2)
   - Remediation: 4 CSIRT FTEs + SOAR platform + MDR service ($1.6M-$2.0M)

4. **Finding #4: Inadequate Backup and Disaster Recovery (CRITICAL)**
   - Location: [`findings/finding-04-backup-dr.md`](findings/finding-04-backup-dr.md)
   - CVSS 8.9 - Ransomware encrypted backups; 6 days data loss
   - No air-gapped backups; 23% backup failure rate; 0/5 on 3-2-1-1-0 rule
   - CMMC Level 3 violation (NIST SP 800-172 Control 3.14.1e)
   - Remediation: Air-gapped + off-site + DR program ($3.35M + $700K staffing)

5. **Finding #5: Insufficient Vendor Security Management (MEDIUM)**
   - Location: [`findings/finding-05-vendor-security.md`](findings/finding-05-vendor-security.md)
   - CVSS 6.5 - 47 vendors with access; 0 security assessments
   - 8 terminated vendors still have active access (avg 11 months)
   - CMMC Level 2 & 3 violations (supply chain risk management)
   - Remediation: TPRM platform + continuous monitoring ($875K + $600K staffing)

**Report Components:**
- Executive summary with business impact quantification
- Detailed condition-criteria-cause-consequence analysis for each finding
- Audit testing procedures and evidence
- Management responses and action plans
- 6-month remediation roadmap
- Investment requirements: $4.5-5.9M total
- ROI analysis and cost-benefit justification
- Framework mappings (COBIT, NIST, CMMC, SOX)

**Skills Demonstrated:** Finding documentation, risk quantification, control testing, evidence evaluation, remediation planning, ROI analysis

---

#### Part 2: Executive Presentation
**Location:** [`deliverables/Collins-Aerospace-Audit-Presentation.pptx`](deliverables/Collins-Aerospace-Audit-Presentation.pptx)

**Deliverable:** 18-slide professional PowerPoint presentation

**Presentation Structure:**
1. Title Slide
2. Executive Summary
3. Audit Objectives & Scope
4. Methodology Overview
5. September 2025 Incident Overview
6. Summary of All Findings
7-11. Individual Finding Slides (5 slides)
12. Positive Findings
13. Remediation Roadmap Overview
14. Investment Requirements & Timeline
15. CMMC Compliance Impact
16. Business Impact & ROI
17. Recommendations Summary
18. Questions & Next Steps

**Supporting Documentation:**
- Complete talking points: [`docs/presentation-structure.md`](docs/presentation-structure.md)
- Slide-by-slide presenter notes
- Executive briefing preparation guide

**Skills Demonstrated:** Executive communication, data visualization, presentation design, stakeholder management

---

### Additional Supporting Documentation

Beyond the three major assignments, this repository includes:

**Incident Analysis:**
- [`incident-analysis/timeline.md`](incident-analysis/timeline.md) - Minute-by-minute September 2025 attack timeline
- 100+ documented events from initial breach to full recovery
- Attack vector analysis and lessons learned

**Remediation Planning:**
- [`remediation/roadmap.md`](remediation/roadmap.md) - Comprehensive 6-month implementation plan
- Week-by-week breakdown of activities
- Resource requirements (9 new FTEs)
- Critical path analysis
- Success metrics and KPIs

**Audit Methodology:**
- [`methodology/control-testing-procedures.md`](methodology/control-testing-procedures.md)
- Risk-based sampling methodology
- Statistical and judgmental sampling approaches
- Documentation standards and workpaper requirements
- Evidence collection and retention guidelines

**Repository Documentation:**
- [`ATTRIBUTION.md`](ATTRIBUTION.md) - Academic integrity statement and team credits
- [`INDEX.md`](INDEX.md) - Complete repository navigation index
- [`REPOSITORY_CONTENTS.md`](REPOSITORY_CONTENTS.md) - Comprehensive inventory

---

### Summary Statistics

| Category | Count | Total Words | Total Lines |
|----------|-------|-------------|-------------|
| **Assignments** | 5 parts | 4,500+ | 800+ |
| **Findings** | 5 complete | 10,215 | 1,878 |
| **Methodology** | 2 documents | 3,500+ | 600+ |
| **Supporting** | 4 documents | 8,000+ | 1,500+ |
| **Repository** | 7 documents | 5,800+ | 1,000+ |
| **TOTAL** | **22+ files** | **32,000+** | **5,778+** |

---

### Course Information

**Course:** ITMM 586 - Information Technology Auditing  
**Semester:** Fall 2025  
**Instructor:** Professor Ann Rangarajan  
**Institution:** Illinois Institute of Technology  
**Program:** Master's in Cybersecurity & Digital Forensics

**Team:**
- **Noble Antwi** - Lead IT Auditor (nantwi@hawk.iit.edu)
- **Krupa Prakash Panchal** - Senior IT Auditor (kpanchal@hawk.iit.edu)



## Incident Overview

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
