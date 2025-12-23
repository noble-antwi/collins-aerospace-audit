# Control Testing Procedures

## Collins Aerospace IT Audit

**Audit Period:** September - November 2025  
**Testing Approach:** Risk-based sampling with 100% testing for critical controls

---

## General Testing Methodology

### Control Selection Process

1. **Risk Assessment**
   - Identify critical business processes
   - Map IT systems supporting each process
   - Assess inherent and residual risk
   - Prioritize high-risk areas for testing

2. **Control Identification**
   - Document control objectives
   - Identify key controls for each objective
   - Classify controls (preventive, detective, corrective)
   - Determine control frequency (manual vs. automated)

3. **Sample Size Determination**
   - 100% testing for critical automated controls
   - Statistical sampling for high-volume manual controls
   - Judgmental sampling for low-frequency controls
   - Risk-adjusted sample sizes

### Testing Procedures by Control Type

#### Access Controls

**Authentication Controls:**

- Configuration review of authentication systems
- User account inventory and access rights analysis
- Password policy compliance verification
- MFA enrollment and enforcement validation
- Privileged access review and certification
- Terminated user access removal verification

**Authorization Controls:**
- Role-based access control (RBAC) design review
- Segregation of duties (SoD) matrix analysis
- Excessive permissions identification
- Service account permissions review
- Vendor/third-party access validation
- Quarterly access recertification testing

**Testing Evidence:**
- Active Directory exports
- IAM system configuration files
- Access request/approval tickets
- Termination workflow documentation
- Quarterly access review certifications

#### Change Management Controls

**Change Authorization:**
- Change Advisory Board (CAB) meeting minutes review
- Change request documentation completeness
- Approval workflow compliance
- Emergency change procedures validation
- Backout plan adequacy assessment

**Change Testing:**
- Test plan documentation review
- Test results and sign-off verification
- User acceptance testing (UAT) evidence
- Regression testing for critical systems
- Performance impact assessment

**Change Implementation:**
- Implementation window compliance
- Post-implementation review completion
- Configuration management database (CMDB) updates
- Communication and training delivery
- Rollback capability verification

**Sample Selection:**
- High-risk changes: 100% testing
- Normal changes: 25 sample (statistical)
- Emergency changes: 100% testing
- Database changes: 15 sample
- Network changes: 20 sample

#### Backup and Recovery Controls

**Backup Execution:**
- Backup job scheduling and completion verification
- Backup success/failure monitoring review
- Backup coverage assessment (systems and data)
- Retention policy compliance
- Off-site/cloud replication verification

**Backup Integrity:**
- Backup verification and validation procedures
- Encryption of backup data in transit and at rest
- Backup media security and access controls
- Backup catalog accuracy and completeness

**Recovery Testing:**
- Restoration test procedures and frequency
- Test result documentation and analysis
- RTO/RPO achievement verification
- Recovery procedure currency and accuracy
- Lessons learned and improvement tracking

**Testing Sample:**
- Daily backup jobs: 5-day sample
- Weekly backup jobs: 4-week sample
- Monthly backup jobs: 3-month sample
- Restoration tests: 100% of conducted tests

#### Incident Response Controls

**Incident Detection:**
- Security monitoring tool coverage assessment
- Alert configuration and tuning review
- Threat intelligence integration verification
- Log aggregation and correlation effectiveness
- Anomaly detection capability testing

**Incident Response:**
- IR plan currency and completeness
- Incident categorization and prioritization
- Escalation procedures and timelines
- Communication protocols and templates
- Evidence preservation procedures

**Incident Resolution:**
- Root cause analysis completion
- Remediation action tracking
- Lessons learned documentation
- Post-incident review completion
- Continuous improvement implementation

**Testing Approach:**
- Review last 12 months of incidents
- Interview CSIRT members
- Tabletop exercise observation
- IR plan walkthrough
- Tool configuration review

---

## Sampling Methodology

### Statistical Sampling

**When Applied:**
- High-volume, homogeneous populations
- Automated controls with consistent execution
- Quarterly/monthly reviews with many instances

**Sample Size Formula:**
```
n = (Z² × p × (1-p)) / E²

Where:
Z = Confidence level (1.96 for 95% confidence)
p = Expected error rate (typically 5%)
E = Margin of error (typically 5%)

Minimum sample size = 25 for populations > 250
```

**Example Calculations:**
- User access reviews (quarterly): 25 samples × 4 quarters = 100 samples
- Change requests (monthly): 25 samples per month
- Backup jobs (daily): 5 business days sample

### Judgmental Sampling

**When Applied:**
- Low-frequency controls (annual, quarterly)
- High-risk or complex transactions
- Controls with known deficiencies
- Management override situations

**Selection Criteria:**
- Largest dollar amounts
- High-risk systems or processes
- New implementations or changes
- Prior audit findings
- Management-identified concerns

**Example Applications:**
- Disaster recovery tests: 100% of tests performed
- Penetration tests: 100% of tests performed
- Business Impact Analyses: 100% review
- Third-party assessments: 100% of high-risk vendors

---

## Documentation Standards

### Workpaper Requirements

**For Each Control Tested:**
1. Control Objective
2. Control Description
3. Control Owner
4. Control Frequency
5. Testing Procedure
6. Sample Selection Method
7. Sample Size
8. Testing Results
9. Exceptions Identified
10. Conclusion

**Evidence Retention:**
- Original evidence preserved in audit repository
- Screenshots with metadata (date, user, system)
- System-generated reports with timestamps
- Email correspondence with headers
- Interview notes signed by interviewee

---

**Version:** 1.0  
**Last Updated:** November 28, 2025  
**Next Review:** December 2026 (Annual)
