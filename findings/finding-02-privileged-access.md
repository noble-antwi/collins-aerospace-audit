# Finding #2: Insufficient Privileged Access Management and Review

**Severity:** HIGH  
**Risk Rating:** CVSS 7.8 (High)  
**Target Remediation Date:** May 31, 2026  
**Finding Owner:** Director of IT Operations

---

## Executive Summary

Collins Aerospace has not conducted privileged access reviews in 30 months, resulting in 47 accounts with permanent administrative privileges and 12 orphaned accounts from terminated employees. This creates excessive standing privileges, potential for unauthorized access, and non-compliance with least privilege principles required by CMMC Level 2 and SOX Section 404.

## Detailed Finding

### What We Found (Condition)

**Privileged Access Review Gaps:**
- Last comprehensive privileged access review: May 2023 (30 months ago)
- No quarterly access recertification process
- 47 users with permanent domain administrator privileges
- 12 orphaned accounts (terminated employees, credentials never disabled)
- No regular attestation by business owners
- Access granted but never removed after project completion

**Excessive Permanent Privileges:**
- 47 accounts with standing domain admin privileges (target: <5)
- 34 AWS administrators (many with AdministratorAccess policy)
- 28 Azure Global Administrators
- 89 accounts in privileged AD groups with no business justification
- No just-in-time (JIT) privilege elevation process
- Developers with production database admin access

**Orphaned and Stale Accounts:**
- 12 domain administrator accounts for terminated employees
  - Average time since termination: 8 months
  - Longest: 16 months (terminated April 2024, account active November 2025)
- 23 service accounts with unknown owners
- 45 accounts with last login >180 days ago but still active
- No automated deprovisioning workflow

**Access Request and Approval Process:**
- Access requests via email (no formal ticketing)
- Approvals inconsistent (sometimes IT manager, sometimes business manager)
- No segregation of duties (SoD) checking
- Access rarely removed after need ends
- "Temporary" access becomes permanent

### What Should Be (Criteria)

**Industry Standards:**
- **NIST SP 800-53 Rev. 5:** AC-2 Account Management, AC-6 Least Privilege
- **NIST SP 800-171:** 3.1.5 Employ the principle of least privilege
- **NIST SP 800-172:** 3.1.1e Establish and retain privileged account authorizations
- **CMMC 2.0 Level 2:** AC.L2-3.1.5 Employ principle of least privilege
- **CMMC 2.0 Level 3:** AC.L3-3.1.1e Maintain authorizations for privileged accounts
- **SOX Section 404:** Quarterly access reviews for financial systems
- **CIS Controls:** CSC 5.4 - Review privileged access quarterly

**Best Practices:**
- Quarterly privileged access reviews and recertification
- Just-in-time privilege elevation (JIT/PAM)
- Minimize standing administrative privileges (<5 permanent)
- Automated deprovisioning upon termination
- Segregation of duties enforcement
- Time-bound access grants with automatic expiration
- Business owner attestation for all privileged access

### Why This Happened (Cause)

**Root Causes:**

1. **Resource Constraints:**
   - Security team of 8 FTEs overwhelmed with incident response
   - No dedicated IAM administrator role
   - Quarterly reviews deemed "too time-consuming" and deprioritized
   - Competing priorities during 2023-2024 cloud migration

2. **Process Gaps:**
   - No formal privileged access review process
   - Access reviews not integrated into HR offboarding workflow
   - No automated access review tooling
   - Business owners not held accountable for attestation
   - Manual review process too labor-intensive to sustain

3. **Technology Limitations:**
   - No Privileged Access Management (PAM) solution
   - No automated access governance tool
   - Active Directory native tools insufficient at scale
   - No integration between HR system and IAM
   - No automated stale account detection

4. **Cultural Factors:**
   - "Once granted, always kept" mentality
   - Reluctance to remove access ("might need it later")
   - Developers resist time-bound access (perceived inefficiency)
   - IT managers grant access but don't revoke
   - Lack of accountability for access hygiene

### Business Impact (Consequence)

**Security Risk:**
- **Unauthorized Access:** Orphaned accounts provide attackers persistent access
- **Privilege Escalation:** Excessive standing privileges enable lateral movement
- **Insider Threat:** 47 permanent admins = 47 potential compromise points
- **Credential Theft:** High-value targets for phishing and credential harvesting

**Compliance Impact:**
- **CMMC Level 3:** Direct violation of 3.1.1e (privileged account authorizations)
- **SOX 404:** Material weakness in access controls
- **Audit Findings:** Expect findings from external financial auditors
- **Contract Requirements:** Customer security questionnaires note deficiency

**Operational Risk:**
- **Excessive Blast Radius:** Any compromised admin account affects entire domain
- **Change Management:** Uncontrolled privileged access bypasses change control
- **Audit Trail:** Unclear who performed privileged actions
- **Accountability:** Can't attribute administrative actions to specific individuals

**Historical Context:**
- September 2025 ransomware attacker escalated to domain admin
- Used harvested service account with domain admin rights
- If privileges were regularly reviewed and minimized, escalation would be harder
- Attack impact potentially reduced with proper privileged access management

## Audit Testing Performed

### Sample Selection
- 100% review of privileged Active Directory groups (Domain Admins, Enterprise Admins, Schema Admins)
- 100% review of AWS/Azure administrative role assignments
- 100% review of database administrator accounts
- Cross-reference with HR termination data (last 24 months)

### Testing Procedures
1. **Privileged Group Membership Analysis:**
   - Exported AD privileged group members
   - Compared current members to May 2023 review results
   - Analyzed business justification documentation (where available)

2. **Termination Testing:**
   - Obtained HR termination list (January 2024 - November 2025)
   - Cross-referenced with Active Directory account status
   - Identified accounts still active post-termination

3. **Access Review Documentation:**
   - Searched for access review documentation (last 30 months)
   - Found partial review from May 2023 (no subsequent reviews)
   - No evidence of quarterly reviews

4. **Cloud Platform Analysis:**
   - AWS IAM policy analyzer for AdministratorAccess grants
   - Azure AD Global Administrator role assignments
   - GCP Super Admin and Project Editor role reviews

5. **Service Account Analysis:**
   - Identified service accounts with elevated privileges
   - Attempted to determine owners (23 unknown)
   - Analyzed last interactive login dates

### Evidence Obtained
- Active Directory group membership exports
- AWS IAM policy reports
- Azure AD role assignment reports
- HR termination data (redacted for audit)
- Email correspondence confirming lack of reviews
- May 2023 partial review documentation

### Testing Results
- 0 of 4 expected quarterly reviews conducted (100% failure rate)
- 12 of 65 terminated employees (18.5%) had active admin accounts
- 47 accounts with permanent domain admin (target: <5)
- 23 service accounts with unknown owners (26% of total)

## Recommendations

### Immediate Actions (0-30 Days) - December 2025

**Emergency Privileged Access Audit:**
1. **Disable Orphaned Accounts:** Immediately disable 12 terminated employee accounts
2. **Emergency Review:** Business owner attestation for all 47 permanent admins
3. **Excessive Privilege Removal:** Reduce permanent domain admins from 47 to <10
4. **Service Account Owner Identification:** Assign owners to 23 unknown accounts

**Action Plan:**
- Week 1 (Dec 2-6): Disable 12 orphaned accounts; notify affected systems
- Week 2 (Dec 9-13): Conduct emergency business owner interviews
- Week 3 (Dec 16-20): Remove unjustified privileges; document approved exceptions
- Week 4 (Dec 23-31): Assign service account owners; update documentation

### Short-Term Actions (30-90 Days) - January-March 2026

**Privileged Access Management (PAM) Solution Implementation:**
- **Solution Selection:** Evaluate CyberArk, BeyondTrust, Delinea Secret Server
- **Key Capabilities Required:**
  - Password vaulting for administrative credentials
  - Just-in-time privilege elevation
  - Session recording and monitoring
  - Privileged account lifecycle management
  - Integration with Active Directory, AWS, Azure

**Deployment Timeline:**
- January: Vendor selection and procurement
- February: Infrastructure deployment and configuration
- March: Pilot with 20 privileged users; full rollout

**Investment:** $800K-$1.2M (software + professional services)

**Interim Process Implementation:**
- **Quarterly Access Review Process:**
  - Establish recurring calendar (March, June, September, December)
  - Automated report generation from AD, AWS, Azure
  - Business owner attestation workflow
  - IT review and remediation of exceptions
  - Executive sign-off on completion

- **Time-Bound Access Grants:**
  - Maximum 90-day privileged access grants
  - Automatic expiration unless renewed
  - Business justification required for renewal
  - Exception process for permanent need (rare)

### Long-Term Actions (90-180 Days) - April-June 2026

**Automated Access Governance:**
- **Identity Governance and Administration (IGA) Solution:**
  - Consider SailPoint, Saviynt, or similar
  - Automated access reviews and recertification
  - Segregation of duties enforcement
  - Role-based access control (RBAC) implementation
  - Integration with HR for automated provisioning/deprovisioning

**Investment:** $500K-$800K (Year 1)

**Zero Standing Privileges Architecture:**
- Eliminate permanent administrative privileges
- Just-in-time elevation for all administrative tasks
- Privilege elevation requires:
  - MFA authentication
  - Business justification
  - Time-bound access (1-8 hours typical)
  - Approval workflow for sensitive systems
  - Session recording and audit

**Target State:**
- 0-5 permanent domain administrators (emergency only)
- 95%+ of administrative access via JIT elevation
- 100% privileged sessions recorded
- Automated quarterly access reviews
- <24 hour account deprovisioning upon termination

### Process Improvements

**Integrated Offboarding Workflow:**
1. HR initiates termination in HRIS
2. Automated workflow triggers in IAM system
3. All access disabled within 1 hour
4. Manager review and attestation within 24 hours
5. Privileged access removed immediately
6. Data access retained for 30 days (legal hold capability)
7. Complete account deletion after 90 days

**Segregation of Duties Matrix:**
- Document incompatible privilege combinations
- Implement automated SoD checking at access request time
- Regular SoD compliance reviews
- Exception process with compensating controls

**Privileged Access Monitoring:**
- Real-time alerting on privileged actions
- Anomaly detection for unusual privileged behavior
- Quarterly privileged user behavior analysis
- Integration with SIEM (Splunk or Sentinel)

## Management Response

**Management Agrees:** Yes  
**Target Completion Date:** May 31, 2026  
**Responsible Party:** Director of IT Operations (Primary), CISO (Support)

**Action Plan:**
1. **December 2025:** Emergency privileged access audit and orphaned account cleanup
2. **January 2026:** PAM solution selection and procurement
3. **February 2026:** Implement interim quarterly review process
4. **March 2026:** PAM solution pilot deployment
5. **April 2026:** Full PAM rollout
6. **May 2026:** IGA solution evaluation
7. **June 2026:** Zero standing privileges architecture complete

**Resource Commit ments:**
- Budget: $1.3M-$2.0M (PAM + IGA solutions)
- Staffing:
  - Dedicated IAM Administrator (1 FTE) - Start January 2026
  - PAM Administrator (1 FTE) - Start March 2026
- External: PAM/IGA implementation consultants (4-month engagement)

**Success Metrics:**
- Orphaned accounts: 0 (currently 12)
- Permanent domain admins: <5 (currently 47)
- Quarterly review completion: 100% (currently 0%)
- Service account owners: 100% identified (currently 74%)
- Deprovisioning time: <24 hours (currently varies)

## References

- NIST Special Publication 800-53 Revision 5 (AC-2, AC-6)
- NIST Special Publication 800-171 Revision 2 (3.1.5)
- NIST Special Publication 800-172 (3.1.1e)
- CMMC 2.0 Level 2 & 3 Requirements
- CIS Critical Security Controls v8 (Control 5)
- COBIT 2019: DSS05.04 - Manage Identity and Access
- SOX Section 404 Guidance on IT General Controls
- Privileged Access Review Documentation (May 2023)
- HR Termination Data Analysis
- Active Directory Audit Logs

---

**Finding Status:** Open  
**Last Updated:** November 28, 2025  
**Next Review:** December 31, 2025 (Emergency audit completion)
