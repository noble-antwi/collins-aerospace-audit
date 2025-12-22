# Assignment 3: Business Continuity & Disaster Recovery

**Course:** ITMM 586 - Information Technology Auditing  
**Presentation Date:** Tuesday, November 4, 2025  
**Duration:** 15 minutes + 5 minutes Q&A  
**Weight:** 100 points  
**Student:** Noble W. Antwi  
**Instructor:** Professor Ann Rangarajan

## Overview

This assignment required delivering a "Lunch-and-Learn" presentation to an IT organization on Business Continuity Planning and Disaster Recovery best practices from an IT audit perspective. The presentation showcased real-world disaster examples and provided actionable BC/DR guidance.

## Full Presentation

**📊 Complete 49-Slide Presentation:** [Assignment_3__Answer.pdf](supporting-files/Assignment_3__Answer.pdf)

**Presentation Title:** *"When Systems Fail: BCP/DR Best Practices from an IT Audit Perspective"*  
**Subtitle:** *Real Disasters, Real Lessons, Real Actions*

## Assignment Requirements Met

✅ Selected real-world natural/human-made disaster (CrowdStrike July 2024)  
✅ Analyzed scale of impact (organizations, geography, financial)  
✅ Identified business continuity lessons learned  
✅ Identified disaster recovery lessons learned  
✅ Recommended industry standards and best practices  
✅ Provided IT audit-specific guidance  
✅ Delivered professional 15-minute presentation with Q&A  

## Case Study: CrowdStrike Global Outage

### Disaster Event Summary

**Date:** July 19, 2024, 4:09 AM UTC  
**Type:** Human-made disaster (software update failure)  
**Duration:** 78 minutes to full propagation

**What Happened:**
CrowdStrike deployed a faulty sensor update (Channel File 291) to their Falcon security software. The update contained a logic error causing Windows systems to crash with Blue Screen of Death (BSOD). Despite CrowdStrike reverting the update at 5:27 AM, millions of systems were already affected and required manual recovery.

### Scale of Impact

**Global Disruption Statistics:**
- **8.5 million Windows systems** affected worldwide
- **$5.4 billion** in losses to Fortune 500 companies
- **5,078 flights cancelled** (4.6% of all scheduled flights)
- **Hospitals** forced to revert to paper-based systems
- **911 emergency services** disrupted in multiple regions
- **Banks** unable to process transactions
- **Fastest-spreading incident in history** (78 minutes for 8.5M systems)

**Comparative Context:**
- WannaCry (2017): 200,000 computers over days
- NotPetya (2017): 2,300+ organizations over days
- Maersk (NotPetya): 7 minutes for full network compromise
- **CrowdStrike: 78 minutes for 8.5M systems globally**

## Lessons Learned

### Business Continuity Lessons

1. **Critical Process Identification Failures**
   - Organizations lacked clear prioritization of systems
   - No tiered recovery approach (Mission/Business/Organization Critical)
   - Recovery efforts scattered across non-critical systems first

2. **Communication Breakdown Patterns**
   - Internal notification trees inadequate
   - External stakeholder communication templates missing
   - Media response procedures nonexistent or untested

3. **Manual Fallback Procedure Gaps**
   - Hospitals unprepared for paper system reversion
   - Airlines lacked manual check-in procedures
   - Financial institutions couldn't process transactions offline

4. **Supply Chain Dependencies Underestimated**
   - Single vendor (CrowdStrike) affecting millions
   - No contingency for vendor-initiated failures
   - Trust model broken - security software became threat vector

### Disaster Recovery Lessons

1. **Testing Inadequacies**
   - Update not tested across diverse Windows configurations
   - No gradual rollout to detect failures early
   - Production became the test environment

2. **Lack of Staged Rollout Procedures**
   - "Big bang" deployment to all customers simultaneously
   - No canary deployment (phased to small percentage first)
   - No ability for customers to control update timing

3. **Insufficient Rollback Capabilities**
   - Systems couldn't automatically revert to last known-good state
   - Manual intervention required for each affected system
   - Recovery time measured in days, not hours

4. **Recovery Time Objectives (RTO) Not Met**
   - Organizations discovered RTOs were aspirational, not tested
   - Actual recovery took 10-100x longer than documented RTOs
   - Critical systems down for days, not the documented hours

## BC/DR Best Practices Recommended

### 1. Comprehensive Business Impact Analysis (BIA)

- Identify and classify critical business processes
- Map IT systems to business functions
- Establish realistic RTO and RPO for each system
- Test assumptions through actual exercises

### 2. Disaster Recovery Plan (DRP) Components

**Eight Essential Pillars:**
1. Governance, scope, and recovery targets
2. Business Impact Analysis
3. 3-2-1-1-0 backup strategy
4. Detailed recovery procedures
5. Communication plan
6. Alternate site arrangements
7. Testing and maintenance schedule
8. Roles, responsibilities, and training

### 3. Testing Requirements

- **Annual full DR tests** - Complete failover exercises
- **Quarterly tabletop exercises** - Walkthrough scenarios
- **Monthly backup verification** - Restore test sampling
- **Document lessons learned** - Update procedures after each test

### 4. Phased Deployment Standards

- Never deploy updates to entire population simultaneously
- Implement canary deployments (1-5% initial rollout)
- Monitor for 24-48 hours between phases
- Automated rollback capabilities required

### 5. Vendor Risk Management Controls

- Require vendors to disclose update testing procedures
- Negotiate customer control over update timing
- Establish SLAs with penalties for failed updates
- Diversify critical vendor dependencies where possible

## Industry Standards Referenced

- **NIST SP 800-34** - Contingency Planning Guide for Federal Information Systems
- **ISO 22301** - Business Continuity Management Systems
- **NIST SP 800-53** - Security and Privacy Controls (CP family)
- **3-2-1-1-0 Backup Rule** - Industry best practice
- **ITIL** - Service continuity management processes

## IT Audit Perspective - What to Test

### Audit Objectives

1. **Plan Existence and Currency**
   - Does a documented BC/DR plan exist?
   - When was it last updated?
   - Does it reflect current IT environment?

2. **Testing Evidence**
   - When was last full DR test conducted?
   - What were the results?
   - Were failures documented and remediated?

3. **Backup Verification**
   - Are backups air-gapped and immutable?
   - Are restore tests performed regularly?
   - Do backups meet defined RPO?

4. **Recovery Procedures**
   - Are procedures detailed enough to execute?
   - Can someone other than the author follow them?
   - Are dependencies and sequences documented?

5. **Communication Plans**
   - Are contact lists current?
   - Are notification templates prepared?
   - Has communication been tested?

### Audit Testing Procedures

- **Review** BC/DR documentation for completeness
- **Interview** DR team members about roles and procedures
- **Observe** backup processes and verify schedules
- **Test** sample restore procedures
- **Examine** DR test results and lessons learned
- **Validate** alternate site readiness

## Prescient Timing

**Key Context:** This presentation was delivered on **November 4, 2025** - analyzing the July 19, 2024 CrowdStrike incident.

**Five weeks later** (early December 2025), the Collins Aerospace audit revealed **remarkably similar control failures:**

| CrowdStrike Issue | Collins Aerospace Finding |
|-------------------|---------------------------|
| Inadequate testing procedures | Finding #3: Incident Response gaps |
| No offsite/air-gapped backups | Finding #4: Backup strategy deficiencies |
| Poor change management | Implied in multiple findings |
| RTO/RPO not tested | Finding #4: Recovery capabilities unverified |
| Communication breakdown | Finding #3: Escalation procedure gaps |

The presentation's analysis proved **prescient** - the same BC/DR vulnerabilities identified in CrowdStrike's global failure existed at Collins Aerospace and contributed to their ransomware incident impact.

## Key Takeaways

1. **Fastest-spreading incident** in IT history (8.5M systems, 78 min)
2. **Testing is non-negotiable** - Untested plans fail when needed most
3. **Phased deployments** prevent single-point-of-failure scenarios
4. **Air-gapped backups** are last line of defense against ransomware
5. **RTO/RPO must be tested** - Assumptions are not facts
6. **Communication plans** reduce chaos during actual disasters
7. **Vendor risk management** critical for supply chain resilience

## Professional Presentation Skills

This assignment demonstrated:
- **Clear visual design** - 49 slides with professional layout
- **Logical flow** - Introduction → Event → Lessons → Recommendations → Conclusion
- **Audience adaptation** - Technical content for IT audience, business impact for leadership
- **Time management** - 15-minute delivery within constraints
- **Q&A preparation** - Anticipated questions and supporting data
- **Actionable guidance** - Specific controls, not just concepts

## Files in This Directory

```
assignment-03-disaster-recovery/
├── README.md (this file)
└── supporting-files/
    ├── Assignment_3__Answer.pdf (49-slide presentation)
    └── Assignment_3_Fall_2025.pdf (original assignment instructions)
```

---

**Note:** The complete 49-slide PDF presentation contains detailed incident analysis, comparative statistics, framework references, and visual aids. This README provides a high-level summary suitable for portfolio presentation.
