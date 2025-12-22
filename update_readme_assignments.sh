#!/bin/bash

# Create a completely new comprehensive Assignment Deliverables section
cat > assignment_section.txt << 'EOF'

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

EOF

echo "New comprehensive assignment section created"
echo "File saved to: assignment_section.txt"
echo ""
echo "This section should REPLACE the existing 'Assignment Deliverables' sections in README.md"

