# Finding #4: Inadequate Backup and Disaster Recovery Controls

**Severity:** CRITICAL  
**Risk Rating:** CVSS 8.9 (High)  
**Target Remediation Date:** May 31, 2026  
**Finding Owner:** Director of IT Infrastructure (Primary), CFO Oversight (Business Continuity)

---

## Executive Summary

Collins Aerospace's backup and disaster recovery controls are fundamentally inadequate, as evidenced by the September 2025 ransomware attack which encrypted both production systems AND backup infrastructure, resulting in 6 days of data loss. The organization lacks air-gapped backups, has a 23% backup failure rate, and hasn't tested restoration procedures since November 2022. This creates critical risk to business continuity, violates CMMC Level 3 requirements (NIST SP 800-172 Control 3.14.1e), and represents a SOX material weakness.

**The September Attack Exposed:**
- Ransomware encrypted backup servers along with production systems
- 6 days of backup data destroyed (September 14-19)
- Last usable backup: September 14 (5 days before attack)
- 2.8 million passenger check-in transactions lost
- 7-day recovery time vs. 4-hour RTO target
- $12-15M in extended recovery costs

## Detailed Finding

### What We Found (Condition)

**No Air-Gapped or Immutable Backups:**
- All backups accessible via production network
- Backup storage systems have network connectivity
- No offline/air-gapped backup copies
- No immutable backup storage
- Backup management credentials stored in Active Directory (compromised)
- Attacker encrypted backup infrastructure simultaneously with production

**High Backup Failure Rate:**
- 23% of daily backup jobs fail
- Failed backup alerting inconsistent
- Backup success verification manual and incomplete
- Some failures go unnoticed for days/weeks
- Root cause: Insufficient backup infrastructure capacity

**Inadequate Backup Testing:**
- Last comprehensive restoration test: November 2022 (3 years ago)
- No regular restoration drills
- Restoration procedures not documented for all systems
- Never tested failover to DR site
- No validation of backup integrity
- Recovery Time Objectives (RTOs) never validated

**Geographic Concentration Risk:**
- Primary data center: Charlotte, NC
- Backup storage: Same Charlotte data center
- DR site: 15 miles from primary (same metro area)
- Hurricane, earthquake, or regional disaster would affect both sites
- SOX compliance requires geographic diversity

**3-2-1-1-0 Backup Rule - Complete Failure:**

Let me explain the industry-standard 3-2-1-1-0 backup rule and Collins' compliance:

| Rule Component | Standard Requirement | Collins Status | Compliant? |
|----------------|---------------------|----------------|------------|
| **3 Copies** | At least 3 copies of data | 2 copies only (prod + backup) | ❌ FAIL |
| **2 Media Types** | 2 different storage media types | 1 type (all disk-based) | ❌ FAIL |
| **1 Off-site** | 1 copy stored off-site | All copies same building | ❌ FAIL |
| **1 Air-gapped** | 1 copy offline/air-gapped | 0 air-gapped copies | ❌ FAIL |
| **0 Errors** | 0 errors in backup verification | 23% failure rate | ❌ FAIL |

**Result:** Collins Aerospace meets ZERO of five requirements.

**Backup Coverage Gaps:**
- Manufacturing system databases: Incomplete backups
- Cloud workloads (AWS/Azure): Inconsistent backup policies
- Virtual machine snapshots: Not retained long enough
- Configuration files: Not backed up systematically
- Email (M365): Relying on Microsoft retention only

**Insufficient Retention:**
- Most systems: 30 days retention
- Regulatory requirement: 7 years for financial data
- No long-term archive strategy
- Tape backups discontinued 2020 (cost savings initiative)

**Backup Monitoring Deficiencies:**
- No centralized backup monitoring dashboard
- Success/failure metrics not tracked
- Capacity planning reactive, not proactive
- No SLA metrics for backup operations
- Executive reporting: None

### What Should Be (Criteria)

**Industry Standards:**
- **NIST SP 800-53 Rev. 5:** CP-9 Information System Backup, CP-10 System Recovery and Reconstitution
- **NIST SP 800-171:** 3.8.9 Conduct backups of system-level and user-level information
- **NIST SP 800-172:** 3.14.1e Protect backup and restoration information using organization-defined controls (CMMC Level 3 SPECIFIC)
- **CMMC 2.0 Level 3:** RM.L3-3.14.1e Enhanced protection for backup/restoration information
- **ISO 22301:** Business Continuity Management requirements
- **SOX Section 404:** Backup and recovery controls for financial systems

**Best Practices:**
- **3-2-1-1-0 Rule:** 3 copies, 2 media types, 1 off-site, 1 air-gapped, 0 errors
- **Air-Gapped Backups:** Network-isolated backup copies immune to ransomware
- **Immutable Storage:** Write-once-read-many (WORM) backup storage
- **Regular Testing:** Monthly restoration tests for critical systems
- **Geographic Diversity:** >100 miles separation between primary and DR
- **Encryption:** Backup data encrypted in-transit and at-rest
- **Automated Monitoring:** Real-time backup success/failure alerting

**Recovery Objectives:**
- **RTO (Recovery Time Objective):** Maximum acceptable downtime
  - Tier 1 Critical (MUSE): 4 hours
  - Tier 2 Important: 24 hours
  - Tier 3 Standard: 72 hours
- **RPO (Recovery Point Objective):** Maximum acceptable data loss
  - Tier 1 Critical: 1 hour
  - Tier 2 Important: 24 hours
  - Tier 3 Standard: 7 days

### Why This Happened (Cause)

**Root Causes:**

1. **Cost Optimization Gone Wrong:**
   - 2020 decision to eliminate tape backups (saved $200K annually)
   - "Cloud backup is sufficient" assumption
   - Air-gapped backups viewed as "expensive" and "unnecessary"
   - Infrastructure capacity constraints due to budget limits
   - No business case for proper DR investment

2. **Misunderstanding of Ransomware Threat:**
   - Backup strategy designed for hardware failures, not cyber attacks
   - Assumed backups safe if "off-server"
   - Didn't anticipate attacker targeting backup infrastructure
   - "We're too small to be targeted" mentality
   - Underestimated sophistication of threat actors

3. **Technical Debt:**
   - Backup infrastructure aging (deployed 2017)
   - Capacity constraints leading to failure rates
   - Multiple backup solutions (not consolidated)
   - Some systems using legacy backup methods
   - Cloud backups not integrated with on-prem

4. **Process Gaps:**
   - No backup architect or dedicated backup team
   - Backup responsibilities distributed across sys admins
   - No formal backup policy or standards
   - Restoration testing not prioritized ("backups work until proven otherwise")
   - No Business Impact Analysis to drive requirements

5. **Compliance Checkbox Mentality:**
   - "We have backups" checked off on audits
   - Quality and effectiveness not verified
   - Compliance documentation vs. actual capability gap
   - No validation of stated RTOs/RPOs
   - SOX auditors didn't test restoration

### Business Impact (Consequence)

**September 2025 Ransomware Impact (Actual):**
- **Data Loss:** 6 days (September 14-19)
  - 2.8 million passenger check-in transactions lost
  - Flight operations data missing
  - Work-in-progress manufacturing data lost
  - Financial close delayed by 5 days

- **Recovery Time:** 7 days (168 hours) vs. 4-hour target
  - 164 hours over RTO = 4,100% miss
  - Manual data reconstruction required
  - Incomplete recovery (some data permanently lost)

- **Financial Impact:**
  - Direct recovery costs: $12-15M
  - Lost productivity: $3-5M
  - Customer compensation: $2-3M
  - Total: $17-23M directly attributable to backup failures

- **Operational Impact:**
  - 217 flights cancelled
  - 170+ airports affected globally
  - Manual check-in processes for 7 days
  - Supply chain disruption
  - Manufacturing delays

**Ongoing Risk (Without Remediation):**
- Next ransomware attack will have similar or worse impact
- Any regional disaster (hurricane, power outage) = extended outage
- Data loss exposure continues
- Business continuity plan not executable
- Customer confidence erosion

**Compliance Impact:**
- **CMMC Level 3:** Direct violation of NIST SP 800-172 Control 3.14.1e
  - This is a LEVEL 3 SPECIFIC control
  - Cannot certify without compliant backup/DR
  - $2.3B in defense contracts at risk
- **SOX 404:** Material weakness in IT controls
  - Backup failure rate >20% is material
  - Geographic concentration is deficiency
  - Restoration testing gaps are material
- **Regulatory:** SEC disclosure required for material IT control weaknesses
- **Insurance:** Potential coverage denial for inadequate controls

**Reputation Impact:**
- September incident widely publicized
- Airline customers questioning Collins' reliability
- Competitor marketing against Collins' vulnerabilities
- Insurance underwriters increasing premiums

## Audit Testing Performed

### Backup Configuration Review
- Reviewed backup infrastructure architecture
- Analyzed network connectivity and access controls
- Examined backup retention policies
- Assessed encryption implementation
- Reviewed disaster recovery site capabilities

### Backup Success Rate Analysis
- Analyzed 90 days of backup job logs (August-October 2025)
- Calculated success rates by system tier
- Identified patterns in failures
- Reviewed capacity utilization trends

**Results:**
- Overall success rate: 77% (23% failure)
- Tier 1 systems: 82% success
- Tier 2 systems: 75% success
- Tier 3 systems: 71% success
- Root cause: Insufficient capacity (backup windows too short)

### Restoration Testing Assessment
- Reviewed restoration test documentation
- Last comprehensive test: November 15, 2022
- Interviewed backup administrators about testing practices
- Analyzed September incident restoration activities

**Findings:**
- No restoration tests conducted in 36 months
- Documented procedures outdated
- September restoration took significantly longer than expected
- Missing dependencies not documented
- Restoration sequence not optimized

### Geographic Risk Assessment
- Primary data center: Charlotte, NC (35.2271° N, 80.8431° W)
- DR site: Charlotte, NC (35.1495° N, 80.8229° W)
- Distance: 5.6 miles (9 km) - INADEQUATE
- Same fault lines, hurricane zone, power grid
- SOX requirement: >100 miles separation

### 3-2-1-1-0 Rule Compliance Assessment

| Test | Result | Evidence |
|------|--------|----------|
| 3 Copies | FAIL | Only 2 copies exist |
| 2 Media | FAIL | All disk-based storage |
| 1 Off-site | FAIL | DR site same building complex |
| 1 Air-gap | FAIL | All backups network-accessible |
| 0 Errors | FAIL | 23% failure rate |

**Overall Compliance: 0%**

### September Incident Forensic Analysis
- Reviewed Mandiant forensic report
- Analyzed attacker actions against backup infrastructure
- Documented timeline of backup system compromise
- Assessed why air-gapped backups would have prevented encryption

**Key Finding:** Attacker specifically targeted backup infrastructure at hour 1 of the attack, demonstrating sophisticated understanding of Collins' backup architecture.

## Recommendations

### Immediate Actions (0-30 Days) - December 2025

**Emergency Air-Gapped Backup Deployment:**

**Week 1-2 (Dec 2-13):**
- Emergency procurement of air-gapped backup infrastructure
  - Vendor options: Rubrik, Cohesity, Veeam with hardened repositories
  - Capacity: 500TB initially (MUSE platform + critical systems)
  - Network isolation: Physically separate network, one-way data transfer only
  - Budget: $800K-$1M (expedited delivery)

**Week 3 (Dec 16-20):**
- Deploy hardware at primary data center
- Configure logical air-gap (network isolation)
- Initial full backup of MUSE platform
- Document recovery procedures

**Week 4 (Dec 23-31):**
- First restoration test from air-gapped backup
- Validate data integrity
- Measure recovery time (baseline)
- Train operations team on procedures

**Target:** Operational air-gapped backup by December 31, 2025

**Backup Monitoring Implementation:**
- Deploy backup monitoring tool (SolarWinds Backup Monitor, Veeam ONE, or similar)
- Configure alerts for failed backup jobs
- Create dashboard for daily operational review
- Set up automated reporting to management
- Budget: $25K-$50K

### Short-Term Actions (30-90 Days) - January-March 2026

**Off-Site Backup Replication:**

**January 2026:**
- Select off-site location (minimum 150 miles from Charlotte)
  - Options: Atlanta co-location facility, AWS region (different zone), Azure region
  - Requirements: Same air-gap protection, encrypted transport
  - Budget: $200K-$350K setup + $15K/month ongoing

**February 2026:**
- Deploy infrastructure at secondary site
- Configure encrypted replication (nightly for critical, weekly for others)
- Test failover to secondary site
- Document procedures

**March 2026:**
- First DR site restoration drill
- Validate geographic diversity
- Measure recovery time from off-site
- Update DR runbooks

**Immutable Backup Configuration:**

**January-February 2026:**
- Configure immutability on existing backup storage
  - WORM (Write-Once-Read-Many) policies
  - Lock retention periods (admin cannot delete)
  - Ransomware protection features
  - Multi-factor authentication for backup admin console

**Testing (February 2026):**
- Attempt to delete immutable backups (should fail)
- Attempt to modify retention settings (should require MFA + secondary approval)
- Validate encryption key management
- Document exception procedures

**Backup Infrastructure Capacity Expansion:**
- Reduce failure rate from 23% to <2%
- Add backup infrastructure capacity (storage + network)
- Implement backup job scheduling optimization
- Extend backup windows where needed
- Budget: $400K-$600K

**First Business Impact Analysis (BIA):**
- Engage external BIA specialist
- Identify all business-critical processes
- Map processes to IT systems and data
- Calculate financial impact of downtime
- Define RTOs and RPOs based on business need (not IT assumptions)
- Budget: $75K-$100K (6-week engagement)

### Long-Term Actions (90-180 Days) - April-June 2026

**Comprehensive DR Program:**

**April 2026:**
- Complete DR site buildout
- Hot standby capability for Tier 1 systems
- Automated failover for critical applications
- Full network connectivity between sites
- Load balancing configuration

**May 2026:**
- First full DR failover test
  - Simulate primary site loss
  - Activate DR site
  - Validate all critical applications operational
  - Measure actual recovery time
  - Document lessons learned
- Schedule: Quarterly DR tests going forward

**June 2026:**
- DR plan comprehensive update
- Executive DR playbook creation
- Crisis communication procedures
- Customer notification templates
- Vendor coordination procedures

**Advanced Backup Capabilities:**

**Synthetic Data Generation (April-May 2026):**
- Deploy synthetic data generation for testing
- Never use production data for restoration testing
- Privacy-preserving test data
- Automated generation

**Backup Security Hardening (May-June 2026):**
- Dedicated service accounts (not domain admin)
- Network segmentation for backup infrastructure
- MFA for backup management console
- Privilege access management (PAM) integration
- Backup encryption key rotation (quarterly)

**Cloud-Native Backup Integration (June 2026):**
- Consistent backup policies across on-prem and cloud
- AWS Backup service configuration
- Azure Backup service configuration
- Cross-cloud backup replication
- Unified management dashboard

### Governance and Continuous Improvement

**Monthly Restoration Testing:**
- Schedule: Third Tuesday of every month
- Scope: Rotate through different systems
- Process: Different team member leads each test
- Metrics: Track RTO achievement, identify issues
- Reporting: Executive dashboard

**Quarterly DR Exercises:**
- Q1: Database restoration drill
- Q2: Full MUSE platform failover
- Q3: Ransomware recovery simulation
- Q4: Regional disaster scenario (hurricane)

**Annual Full-Scale DR Test:**
- Complete failover to DR site
- 8-hour test window
- Executive participation
- External observation/assessment
- Board reporting

**Backup Performance Metrics:**
- Backup success rate: Target >98% (currently 77%)
- Recovery point objective achievement: Target 100%
- Recovery time objective achievement: Target 100%
- Restoration test success rate: Target 100%
- Capacity utilization: Target <75%

**Executive Reporting:**
- Monthly: Backup health dashboard
- Quarterly: DR capability assessment
- Annually: Comprehensive DR program review
- Ad-hoc: Any backup failure affecting Tier 1 systems

## Management Response

**Management Agrees:** Yes  
**Target Completion Date:** May 31, 2026  
**Responsible Party:** Director of IT Infrastructure (Primary), CFO Oversight (Business Continuity)

**Management Comments:**
"The September ransomware attack clearly demonstrated the inadequacy of our backup and DR controls. Management acknowledges this as a critical deficiency and commits full resources to remediation. The lack of air-gapped backups was a catastrophic oversight that cost the company $15M+ and damaged customer relationships. This will not happen again."

**Action Plan:**

| Month | Key Activities | Investment | Milestones |
|-------|---------------|-----------|------------|
| **Dec 2025** | Air-gap backup deployment, monitoring | $850K | Air-gap operational Dec 31 |
| **Jan 2026** | Off-site selection, immutability, BIA kickoff | $500K | Off-site contracts signed |
| **Feb 2026** | Off-site deployment, capacity expansion | $700K | First off-site replication |
| **Mar 2026** | DR testing, BIA completion | $200K | First successful DR test |
| **Apr 2026** | DR site buildout, advanced capabilities | $600K | Hot standby operational |
| **May 2026** | Full DR test, cloud integration | $300K | RTO validated <4 hours |
| **Jun 2026** | Security hardening, program maturity | $200K | All gaps closed |

**Total Investment:** $3.35M (Year 1)

**Resource Commitments:**
- **Staffing:**
  - Backup Architect (1 FTE) - Start January 2026
  - Backup Administrator (2 FTEs) - Start February 2026
  - DR Coordinator (1 FTE) - Start March 2026
  - Annual cost: $600K-$800K

- **Technology:**
  - Air-gapped backup: $800K-$1M
  - Off-site replication: $200K-$350K + $180K/year
  - Backup capacity expansion: $400K-$600K
  - Monitoring tools: $25K-$50K
  - DR site infrastructure: $600K-$900K

- **External Services:**
  - BIA specialist: $75K-$100K
  - DR testing facilitator: $50K annually
  - Backup architecture consulting: $100K-$150K

**Success Criteria:**
- Air-gapped backups operational by December 31, 2025
- Off-site replication operational by March 31, 2026
- Backup success rate >98% by June 30, 2026
- Monthly restoration testing established
- 3-2-1-1-0 rule 100% compliance by June 30, 2026
- RTO <4 hours validated by May 31, 2026
- CMMC Level 3 backup requirements met by June 30, 2026

## Financial Justification

**Cost of Inadequate Controls (Historical):**
- September 2025 incident: $17-23M (direct costs)
- Reputation damage: Estimated $5-10M (customer losses)
- Increased insurance premiums: $2-3M annually
- **Total historical cost:** $24-36M

**Cost of Proper Controls:**
- Year 1 investment: $3.35M (technology) + $700K (staffing) = $4.05M
- Annual ongoing: $1.2M (staffing + recurring costs)

**ROI Analysis:**
- Preventing one incident justifies 5-9 years of investment
- Reduced insurance premiums: $500K-$1M annually
- Customer retention value: $10M+ annually
- CMMC compliance: $2.3B contracts protected
- **Simple ROI:** 400-600% in incident prevention alone

**Cost of Inaction:**
- Next incident: $50-100M (ransomware sophistication increasing)
- CMMC non-compliance: $2.3B contracts lost
- SOX material weakness: Stock impact, audit fees
- Regulatory penalties: $10-25M potential
- **Risk exposure:** $2.4B+

**Board Recommendation:**
Approve full $4.05M Year 1 investment immediately. The organization cannot afford another backup failure. This is not optional for a defense contractor handling CUI and seeking CMMC Level 3 certification.

## References

- NIST Special Publication 800-53 Revision 5 (CP-9, CP-10)
- NIST Special Publication 800-171 Revision 2 (3.8.9)
- NIST Special Publication 800-172 (3.14.1e - CMMC Level 3 specific)
- CMMC 2.0 Level 3 Requirements
- ISO 22301:2019 Business Continuity Management
- SOX Section 404 Guidance on IT General Controls
- 3-2-1-1-0 Backup Rule (Industry Best Practice)
- September 2025 Forensic Report (Mandiant)
- Backup Infrastructure Audit Report
- Geographic Risk Analysis Report

---

**Finding Status:** Open  
**Last Updated:** November 28, 2025  
**Next Review:** December 31, 2025 (Air-gap deployment completion)

**Critical Note:** This finding represents the SINGLE MOST IMPORTANT remediation activity for Collins Aerospace. Without proper backup and DR controls, the organization remains vulnerable to catastrophic loss from ransomware, natural disasters, or infrastructure failures. Executive leadership must treat this with highest urgency.
