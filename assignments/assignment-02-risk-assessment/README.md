# Assignment 2: NIST SP 800-30 Risk Assessment

**Course:** ITMM 586 - Information Technology Auditing  
**Completion Date:** September 29, 2025  
**Student:** Noble W. Antwi  
**Instructor:** Professor Ann Rangarajan

## Executive Summary

This assignment involved conducting a comprehensive IT risk assessment of the University ITMM IT Audit's Banner Finance system using NIST SP 800-30 Rev. 1 methodology. The Banner system manages all financial, accounting, HR, and payroll operations for a university serving 15,000 students and hundreds of staff members.

**Full Report:** [Assignment_2_Answer.pdf](<supporting-files/Assignemnt 2 - Answer.pdf>) (30 pages)

## Assignment Requirements

The assessment followed NIST SP 800-30 Risk Assessment Process (Chapter 3) and completed all 8 required tables:
- **Table D-7:** Adversarial Threat Sources
- **Table D-8:** Non-Adversarial Threat Sources  
- **Table E-5:** Threat Events (Adversarial and Non-Adversarial)
- **Table F-3:** Vulnerabilities
- **Table F-6:** Predisposing Conditions
- **Table H-4:** Adverse Impacts
- **Table I-5:** Adversarial Risk (detailed analysis)
- **Table I-7:** Non-Adversarial Risk (detailed analysis)  

## Key Findings

### Overall Risk Rating: HIGH

The assessment identified 18 distinct risks with the following distribution:
- 3 Very High Risks
- 7 High Risks
- 5 Moderate Risks
- 3 Low Risks

### Critical Vulnerabilities

1. **No Offsite Backup Storage** - All backups located in same Florida coastal facility, exposed to hurricane risk
2. **Weak Password Policies** - 8-character minimum, no complexity requirements, no forced rotation
3. **Delayed Account Termination** - Terminated users remain active up to 30 days
4. **No Change Control Approval** - Programmers push production changes without management review
5. **Inadequate Access Reviews** - No periodic user access review procedures

### Threat Analysis

**Adversarial Threats (7 identified):**
- External cybercriminal groups
- Malicious insiders
- Former employees
- Hacktivists
- Nation-state actors
- Student hackers
- Organized crime

**Non-Adversarial Threats (10 identified):**
- Hurricanes and tropical storms
- Power grid failures
- Human error (administrative and user)
- Hardware failures (storage and servers)
- Software bugs
- Flooding
- HVAC failures

### Three-Tier Risk Assessment Results

**Tier 1 (Organizational):**
- Single point of failure in centralized IT structure
- No offsite backup strategy
- Geographic concentration risk (Florida coast)

**Tier 2 (Mission/Business Process):**
- Change management lacks management oversight
- No formal approval process for production changes
- Inadequate business continuity planning

**Tier 3 (Information System):**
- Password settings below industry standards
- Inconsistent user access management
- Technical vulnerabilities in Banner configuration

## Methodology

### Risk Assessment Framework

The assessment applied NIST SP 800-30 Rev. 1 three-tier risk management framework:
- **Tier 1:** Organizational-level risks affecting university operations
- **Tier 2:** Mission/business process risks impacting financial functions
- **Tier 3:** Information system-level risks within Banner application

### Risk Calculation

**Adversarial Risks:**  
Overall Likelihood = Likelihood of Attack Initiation × Likelihood of Success  
Risk Level = Overall Likelihood × Impact Level

**Non-Adversarial Risks:**  
Overall Likelihood = Likelihood of Event × Likelihood of Adverse Impact  
Risk Level = Overall Likelihood × Impact Level

### Qualitative Assessment Scale

| Rating | Probability Range |
|--------|-------------------|
| Very Low | 0-4% |
| Low | 5-20% |
| Moderate | 21-50% |
| High | 51-80% |
| Very High | 81-100% |

## Key Learning Outcomes

This assessment developed proficiency in:

1. **NIST Framework Application** - Practical experience applying NIST SP 800-30 to real scenarios
2. **Threat Modeling** - Systematic identification of adversarial and non-adversarial threats
3. **Risk Quantification** - Converting qualitative assessments to quantitative risk levels
4. **Stakeholder Communication** - Presenting technical risks in business-friendly language
5. **Control Weakness Identification** - Recognizing control gaps and vulnerabilities

## Application to Collins Aerospace Audit

The methodology and skills developed in this assignment directly informed the Collins Aerospace final project:

- Three-tier risk framework applied to Collins engagement planning
- Threat source identification methodology carried forward
- Risk assessment templates adapted for Collins-specific context
- NIST SP 800-30 cited in audit planning memo as foundation
- Control testing approach informed by vulnerability analysis techniques

## References

- NIST SP 800-30 Rev. 1 (Guide for Conducting Risk Assessments)
- NIST SP 800-53 Rev. 5 (Security and Privacy Controls)
- COBIT 2019 (Risk Management Domain)
- FBI IC3 and MS-ISAC threat intelligence
- Academic research on risk assessment methodologies

## Repository Contents

```
assignment-02-risk-assessment/
├── README.md                                    # This file
└── supporting-files/
    ├── Assignemnt 2 - Answer.pdf                # Complete 30-page submission
    ├── Assignment 2 Fall 2025.pdf               # Original assignment instructions
    ├── Assignment 2 - Template for Tables.docx  # NIST table templates
    ├── ITMM IT Audit University Case Study.pdf  # Source case study
    └── nistspecialpublication800-30r11.pdf      # Framework reference
```

---

**Note:** The complete 30-page PDF submission contains detailed analysis, all risk tables, documented assumptions, methodology notes, and recommendations. This README provides a high-level summary suitable for portfolio review.
