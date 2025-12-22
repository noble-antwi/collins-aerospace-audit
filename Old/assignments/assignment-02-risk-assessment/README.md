# Assignment 2: NIST SP 800-30 Risk Assessment

**Course:** ITMM 586 - Information Technology Auditing  
**Completion Date:** September 29, 2025  
**Weight:** 100 points  
**Student:** Noble W. Antwi  
**Instructor:** Professor Ann Rangarajan

## Overview

This assignment required conducting a comprehensive IT risk assessment of the University ITMM IT Audit's Banner Finance system following NIST SP 800-30 Rev. 1 methodology. The Banner system handles all financial, accounting, HR, and payroll functions for a university serving 15,000 students and hundreds of staff members.

## Full Submission

**📄 Complete 30-Page Report:** [Assignemnt_2_-_Answer.pdf](supporting-files/Assignemnt_2_-_Answer.pdf)

## Assignment Requirements Met

✅ Followed NIST SP 800-30 Risk Assessment Process (Chapter 3)  
✅ Completed all 8 required NIST tables (D-7, D-8, E-5, F-3, F-6, H-4, I-5, I-7)  
✅ Identified 18 distinct risks across three tiers  
✅ Professional executive summary suitable for senior leadership  
✅ Documented assumptions and methodology  

## Key Findings Summary

### Overall Risk Rating: HIGH

**Risk Distribution:**
- 3 Very High Risks
- 7 High Risks  
- 5 Moderate Risks
- 3 Low Risks
- 0 Very Low Risks

### Critical Vulnerabilities Identified

1. **No Offsite Backup Storage** - All backups in same Florida coastal facility exposed to hurricane risk
2. **Weak Password Policies** - 8-character minimum, no complexity requirements, no forced rotation
3. **Delayed Account Termination** - Terminated users remain active up to 30 days
4. **No Change Control Approval** - Programmers push production changes without management review
5. **Inadequate Access Reviews** - No periodic user access review procedures

### Threat Source Analysis

**Adversarial Threats (7 identified):**
- External cybercriminal groups
- Malicious insiders
- Former employees
- Hacktivists
- Nation-state actors
- Student hackers
- Organized crime

**Non-Adversarial Threats (10 identified):**
- Hurricanes/tropical storms
- Power grid failures
- Human error (admin & user)
- Hardware failures (storage & servers)
- Software bugs
- Flooding
- HVAC failures

### Three-Tier Risk Assessment

**Tier 1 (Organizational):**
- Single point of failure: centralized IT structure
- No offsite backup strategy
- Geographic concentration risk (Florida coast)

**Tier 2 (Mission/Business Process):**
- Change management lacks management oversight
- No formal approval process for production changes
- Business continuity planning inadequate

**Tier 3 (Information System):**
- Password settings below industry standards
- User access management inconsistent
- Technical vulnerabilities in Banner configuration

## NIST Tables Completed

All eight required tables from NIST SP 800-30 Appendices:

| Table | Content | Count |
|-------|---------|-------|
| D-7 | Adversarial Threat Sources | 7 sources |
| D-8 | Non-Adversarial Threat Sources | 10 sources |
| E-5 (Adversarial) | Threat Events | 9 events |
| E-5 (Non-Adversarial) | Threat Events | 10 events |
| F-3 | Vulnerabilities | 12 vulnerabilities |
| F-6 | Predisposing Conditions | 10 conditions |
| H-4 | Adverse Impacts | 8 impact types |
| I-5 | Adversarial Risk (detailed) | 9 risk scenarios |
| I-7 | Non-Adversarial Risk (detailed) | 10 risk scenarios |

## Methodology

### Risk Calculation Formula

**Adversarial Risks:**
- Overall Likelihood = Likelihood of Attack Initiation × Likelihood of Success
- Risk Level = Overall Likelihood × Impact Level

**Non-Adversarial Risks:**
- Overall Likelihood = Likelihood of Event × Likelihood of Adverse Impact  
- Risk Level = Overall Likelihood × Impact Level

### Qualitative Scale

| Rating | Percentage Range |
|--------|------------------|
| Very Low | 0-4% |
| Low | 5-20% |
| Moderate | 21-50% |
| High | 51-80% |
| Very High | 81-100% |

## Key Learning Outcomes

1. **NIST Framework Application** - Practical experience applying NIST SP 800-30 to real scenario
2. **Threat Modeling** - Systematic identification of adversarial and non-adversarial threats
3. **Risk Quantification** - Converting qualitative assessments to quantitative risk levels
4. **Stakeholder Communication** - Presenting technical risks in business-friendly language
5. **Control Weakness Identification** - Recognizing control gaps and vulnerabilities

## Impact on Collins Aerospace Audit

The methodology and skills developed in this assignment directly informed the Collins Aerospace audit approach:

- **Three-Tier Risk Framework** applied to Collins engagement
- **Threat Source Identification** methodology carried forward
- **Risk Assessment Templates** adapted for Collins-specific context
- **NIST SP 800-30 Citation** in audit planning memo as foundation
- **Control Testing Approach** informed by vulnerability analysis techniques

## Assumptions Made

18 documented assumptions filled gaps in the case study:
- Financial transaction volumes
- Password specifications
- Account termination timeline
- Backup testing procedures
- Change frequency and incident rates
- Hurricane probability (geographic)
- Regulatory compliance scope
- Incident history (inferred)
- Budget constraints
- Network segmentation
- Patch management cycles
- Staff expertise levels
- Recovery capabilities
- Physical security effectiveness
- Insurance coverage
- Third-party risk
- Data classification
- Documentation status

See full PDF for complete assumption list and justifications.

## References & Frameworks

- NIST SP 800-30 Rev. 1 (Guide for Conducting Risk Assessments)
- NIST SP 800-53 Rev. 5 (Security and Privacy Controls)
- COBIT 2019 (Risk Management)
- Industry threat intelligence (FBI IC3, MS-ISAC)
- Academic research on risk assessment methodologies

## Files in This Directory

```
assignment-02-risk-assessment/
├── README.md (this file)
└── supporting-files/
    ├── Assignemnt_2_-_Answer.pdf (30-page full submission)
    ├── Assignment_2_Fall_2025.pdf (original assignment instructions)
    ├── Assignment_2_-_Template_for_Tables_Required_for_Submission.docx
    ├── ITMM_IT_Audit_University_Case_Study.pdf (case study)
    └── nistspecialpublication800-30r11.pdf (framework reference)
```

## Professional Development

This assignment demonstrated competency in:
- Enterprise risk assessment
- NIST framework application
- Technical writing for executive audiences
- Threat intelligence integration
- Risk quantification and prioritization
- Audit evidence documentation

---

**Note:** The complete 30-page PDF submission contains all detailed analysis, risk tables, assumptions, methodology notes, and recommendations. This README provides a high-level summary suitable for portfolio presentation.
