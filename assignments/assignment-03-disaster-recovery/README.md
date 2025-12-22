# Assignment 3: Business Continuity & Disaster Recovery

**Course:** ITMM 586 - Information Technology Auditing  
**Presentation Date:** November 4, 2025  
**Student:** Noble W. Antwi  
**Instructor:** Professor Ann Rangarajan

## Executive Summary

This assignment delivered a comprehensive "Lunch-and-Learn" presentation on Business Continuity Planning and Disaster Recovery best practices from an IT audit perspective. The 49-slide presentation analyzed real-world disasters and provided actionable BC/DR guidance for IT organizations.

**Full Presentation:** [Assignment_3_Answer.pdf](<supporting-files/Assignment 3 - Answer.pdf>)

**Title:** "When Systems Fail: BCP/DR Best Practices from an IT Audit Perspective"  
**Subtitle:** Real Disasters, Real Lessons, Real Actions

## Primary Case Study: CrowdStrike Global Outage

### Event Summary

**Date:** July 19, 2024, 4:09 AM UTC  
**Type:** Software update failure (human-made disaster)  
**Duration:** 78 minutes to global propagation

**Incident Description:**
CrowdStrike deployed a faulty sensor update (Channel File 291) to their Falcon security software containing a logic error that caused Windows systems to crash with Blue Screen of Death (BSOD). The update was reverted at 5:27 AM UTC, but millions of systems required manual recovery intervention.

### Global Impact

**Disruption Statistics:**

- 8.5 million Windows systems affected worldwide
- $5.4 billion in losses to Fortune 500 companies
- 5,078 flights cancelled (4.6% of all scheduled flights)
- Hospitals forced to revert to paper-based systems
- 911 emergency services disrupted in multiple regions
- Banks unable to process transactions

**Fastest-Spreading Incidents Comparison:**

- **CrowdStrike (2024):** 8.5 million systems in 78 minutes
- WannaCry (2017): 200,000 computers in days
- NotPetya (2017): 2,300+ organizations in days
- Maersk (NotPetya): Full network compromise in 7 minutes

## Lessons Learned

### Business Continuity Lessons

**Critical Process Identification Failures**

- Organizations lacked clear prioritization of systems
- No tiered recovery approach (Mission/Business/Organization Critical)
- Recovery efforts scattered across non-critical systems first

**Communication Breakdown Patterns**

- Internal notification trees inadequate
- External stakeholder communication templates missing
- Media response procedures nonexistent or untested

**Manual Fallback Procedure Gaps**

- Hospitals unprepared for paper system reversion
- Airlines lacked manual check-in procedures
- Financial institutions couldn't process transactions offline

**Supply Chain Dependencies Underestimated**

- Single vendor (CrowdStrike) affecting millions
- No contingency for vendor-initiated failures
- Trust model broken - security software became threat vector

### Disaster Recovery Lessons

**Testing Inadequacies**

- Update not tested across diverse Windows configurations
- No gradual rollout to detect failures early
- Production became the test environment

**Lack of Staged Rollout Procedures**

- "Big bang" deployment to all customers 
simultaneously
- No canary deployment (phased to small percentage first)
- No ability for customers to control update timing

**Insufficient Rollback Capabilities**

- Systems couldn't automatically revert to last known-good state
- Manual intervention required for each affected system
- Recovery time measured in days, not hours

**Recovery Time Objectives (RTO) Not Met**

- Organizations discovered RTOs were aspirational, not tested
- Actual recovery took 10-100x longer than documented RTOs
- Critical systems down for days, not the documented hours

## BC/DR Best Practices

### 1. Business Impact Analysis (BIA)

- Identify and classify critical business processes
- Map IT systems to business functions
- Establish realistic RTO and RPO for each system tier
- Validate assumptions through testing exercises

### 2. Disaster Recovery Plan Components

**Eight Essential Elements:**

1. Governance, scope, and recovery targets
2. Business Impact Analysis
3. 3-2-1-1-0 backup strategy
4. Detailed recovery procedures
5. Communication plan
6. Alternate site arrangements
7. Testing and maintenance schedule
8. Roles, responsibilities, and training

### 3. Testing Requirements

- Annual full DR tests - Complete failover exercises
- Quarterly tabletop exercises - Walkthrough scenarios
- Monthly backup verification - Restore test sampling
- Document lessons learned - Update procedures after each test

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

## IT Audit Perspective

### Audit Objectives

**Plan Existence and Currency**
- Does a documented BC/DR plan exist?
- When was it last updated?
- Does it reflect current IT environment?

**Testing Evidence**
- When was last full DR test conducted?
- What were the results?
- Were failures documented and remediated?

**Backup Verification**
- Are backups air-gapped and immutable?
- Are restore tests performed regularly?
- Do backups meet defined RPO?

**Recovery Procedures**
- Are procedures detailed enough to execute?
- Can someone other than the author follow them?
- Are dependencies and sequences documented?

**Communication Plans**
- Are contact lists current?
- Are notification templates prepared?
- Has communication been tested?

### Audit Testing Procedures

- Review BC/DR documentation for completeness
- Interview DR team members about roles and procedures
- Observe backup processes and verify schedules
- Test sample restore procedures
- Examine DR test results and lessons learned
- Validate alternate site readiness

## Connection to Collins Aerospace Audit

**Presentation Date:** November 4, 2025 (analyzing July 19, 2024 CrowdStrike incident)

**Five weeks later** (early December 2025), the Collins Aerospace audit revealed remarkably similar control failures:

| CrowdStrike Issue | Collins Aerospace Finding |
|-------------------|---------------------------|
| Inadequate testing procedures | Finding #3: Incident Response gaps |
| No offsite/air-gapped backups | Finding #4: Backup strategy deficiencies |
| Poor change management | Implied in multiple findings |
| RTO/RPO not tested | Finding #4: Recovery capabilities unverified |
| Communication breakdown | Finding #3: Escalation procedure gaps |

The presentation's analysis proved prescient - the same BC/DR vulnerabilities identified in CrowdStrike's global failure existed at Collins Aerospace and contributed to their ransomware incident impact.

## Key Takeaways

- Fastest-spreading incident in IT history (8.5M systems, 78 minutes)
- Testing is non-negotiable - Untested plans fail when needed most
- Phased deployments prevent single-point-of-failure scenarios
- Air-gapped backups are last line of defense against ransomware
- RTO/RPO must be tested - Assumptions are not facts
- Communication plans reduce chaos during actual disasters
- Vendor risk management critical for supply chain resilience

## Skills Demonstrated

- Clear visual design presentation with professional layout
- Logical flow - Introduction → Event → Lessons → Recommendations → Conclusion
- Audience adaptation - Technical content for IT audience, business impact for leadership
- Time management - 15-minute delivery within constraints
- Q&A preparation - Anticipated questions and supporting data
- Actionable guidance - Specific controls, not just concepts

---

**Note:** The complete 49-slide presentation contains detailed incident analysis, comparative statistics, framework references, and visual aids. This README provides a high-level summary suitable for portfolio presentation.
