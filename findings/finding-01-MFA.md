# Finding #1: Inadequate Multi-Factor Authentication Implementation

**Severity:** CRITICAL  
**Risk Rating:** CVSS 9.1 (Critical)  
**Target Remediation Date:** April 30, 2026  
**Finding Owner:** CISO

---

## Executive Summary

Collins Aerospace has inadequate multi-factor authentication (MFA) implementation across VPN, privileged accounts, and service accounts. This gap directly enabled the September 2025 ransomware attack and creates ongoing vulnerability to unauthorized access. Without MFA, 60.5% of VPN accounts and 35.3% of privileged accounts rely solely on password authentication, violating CMMC Level 2 requirements and creating a critical security vulnerability.

## Detailed Finding

### What We Found (Condition)

**VPN Access:**

- 89 of 147 VPN accounts (60.5%) lack MFA requirement
- Legacy VPN infrastructure (Cisco ASA 5500 series, deployed 2018)
- Management deferred MFA pending infrastructure replacement
- Single-factor authentication accepted for remote access

**Privileged Accounts:**
- 12 of 34 domain administrator accounts (35.3%) bypass MFA
- No MFA requirement for AWS/Azure administrative access
- Database administrator accounts use password-only authentication
- Service accounts with elevated privileges lack certificate-based authentication

**Service Accounts:**
- 23 service accounts with static passwords
- 18+ months without password rotation
- No certificate-based or key-based authentication
- Several enabled for interactive login (security risk)
- No automated rotation mechanisms

### What Should Be (Criteria)

**Industry Standards:**
- NIST SP 800-53 Rev. 5: IA-2(1) Multi-Factor Authentication to Privileged Accounts
- NIST SP 800-171: Control 3.5.3 - Use multi-factor authentication for local and network access
- CMMC 2.0 Level 2: AC.L2-3.1.12 - Require MFA for all accounts
- CIS Critical Security Controls: CSC 6.3 - Require MFA for all privileged accounts

**Technical Best Practices:**
- MFA for 100% of privileged and remote access accounts
- Certificate-based authentication for service accounts
- Automated password/certificate rotation (60-90 day maximum)
- Just-in-time privileged access with MFA verification
- Break-glass procedures with compensating controls

### Why This Happened (Cause)

**Root Causes Identified:**

1. **Infrastructure Replacement Deferral:**
   - VPN infrastructure scheduled for Q4 2025 replacement
   - Management deferred MFA to avoid "throwaway work"
   - No formal risk assessment conducted for delay
   - No temporary compensating controls implemented

2. **Inadequate PAM Implementation:**
   - No centralized Privileged Access Management solution
   - Lack of automated credential rotation
   - Service account management decentralized
   - No visibility into service account usage patterns

3. **Technical Debt:**
   - Legacy systems don't support modern authentication
   - Certificate infrastructure incomplete
   - Service account inventory incomplete
   - Automated remediation tooling absent

4. **Resource Constraints:**
   - Security team understaffed (8 FTEs for 80,000-employee organization)
   - Competing priorities for limited resources
   - Technical expertise gaps in IAM/PAM
   - Budget constraints for PAM solution

### Business Impact (Consequence)

**Direct Attack Vector:**
The September 2025 ransomware attack began with a compromised VPN credential lacking MFA protection. This finding represents the PRIMARY vulnerability that enabled the $15M+ incident.

**Ongoing Risk Exposure:**
- Unauthorized access to corporate network
- Lateral movement opportunities for attackers
- Data exfiltration potential
- Additional ransomware/malware deployment risk
- Regulatory non-compliance

**Compliance Impact:**
- **CMMC Level 3:** Cannot certify without MFA (blocks $2.3B contracts)
- **SOX 404:** Material weakness in access controls
- **Cyber Insurance:** Potential coverage denial for MFA-related incidents
- **Customer Contracts:** SLA violations for security requirements

**Financial Impact:**
- Historical: $15M+ September attack (direct attribution)
- Future Risk: $50-100M potential incident without remediation
- Compliance: $10-25M CMMC certification delay costs
- Insurance: Premium increases or coverage denial

## Audit Testing Performed

### Sample Selection
- 100% review of VPN accounts (147 accounts)
- 100% review of privileged accounts (34 domain admins, 34 AWS/Azure admins)
- 100% review of service accounts with elevated privileges (23 accounts)

### Testing Procedures
1. Configuration review of VPN authentication settings
2. Active Directory privileged group membership analysis
3. AWS/Azure IAM administrative role assignments
4. Service account permissions and authentication method review
5. MFA enrollment status verification
6. Authentication logs analysis (30-day sample)

### Evidence Obtained
- VPN configuration exports
- Active Directory group membership reports
- AWS/Azure IAM role assignments
- Service account inventory with authentication methods
- MFA enrollment dashboard screenshots
- Authentication failure logs

## Recommendations

### Immediate Actions (0-30 Days)

**Priority 1: Emergency VPN MFA Deployment**
- Deploy MFA to all 89 VPN accounts lacking protection
- Use existing Microsoft Entra ID (Azure AD) licensing
- Mandatory enrollment with no exceptions
- Self-service enrollment portal
- Target: 100% completion by December 15, 2025

**Priority 2: Privileged Account MFA Extension**
- Deploy MFA to 12 domain administrator accounts
- Implement MFA for AWS/Azure administrative access
- Configure privileged elevation to require MFA
- Break-glass procedures with compensating controls
- Target: 100% completion by December 31, 2025

### Short-Term Actions (30-90 Days)

**PAM Solution Implementation:**
- Select and procure PAM solution (CyberArk, BeyondTrust, or Delinea)
- Deploy PAM for privileged account management
- Implement password vaulting and session recording
- Configure just-in-time privilege elevation
- Target: Operational by March 31, 2026

**Service Account Remediation:**
- Migrate 23 service accounts to certificate-based authentication
- Implement automated certificate rotation (60-day lifecycle)
- Disable interactive login for all service accounts
- Deploy service account monitoring and alerting
- Target: Complete by February 28, 2026

### Long-Term Actions (90-180 Days)

**Zero Trust Architecture:**
- Design Zero Trust network segmentation
- Implement continuous authentication and authorization
- Deploy device trust and health verification
- Integrate with PAM and MFA solutions
- Target: Phase 1 complete by June 30, 2026

**Governance and Monitoring:**
- Quarterly privileged access reviews
- MFA compliance dashboard and reporting
- Automated non-compliance detection and alerting
- Regular PAM solution audits
- Incident response integration

## Management Response

**Management Agrees:** Yes  
**Target Completion Date:** April 30, 2026  
**Responsible Party:** CISO (Primary), Director of IT Operations (Support)

**Action Plan:**
1. **December 2025:** Emergency MFA deployment (VPN + privileged accounts)
2. **January 2026:** PAM solution evaluation and selection
3. **February 2026:** Service account certificate-based auth migration
4. **March 2026:** PAM solution deployment
5. **April 2026:** Zero Trust architecture design
6. **Ongoing:** Quarterly compliance monitoring and reporting

**Resource Requirements:**
- Budget: $800K-$1.2M for PAM solution (licensing + professional services)
- Staffing: Dedicated IAM engineer (1 FTE) starting January 2026
- External: PAM implementation consultants (3-month engagement)

## References

- NIST Special Publication 800-53 Revision 5
- NIST Special Publication 800-171 Revision 2
- CMMC 2.0 Level 2 & 3 Requirements
- CIS Critical Security Controls v8
- COBIT 2019: DSS05.04 - Manage Identity and Access
- September 2025 Incident Forensic Report
- VPN Configuration Review Documentation
- Privileged Account Inventory

---

**Finding Status:** Open  
**Last Updated:** November 28, 2025  
**Next Review:** December 15, 2025 (Emergency MFA completion)
