# Finding #5: Insufficient Vendor and Third-Party Security Management

**Severity:** MEDIUM  
**Risk Rating:** CVSS 6.5 (Medium)  
**Target Remediation Date:** June 30, 2026  
**Finding Owner:** CISO (Primary), Chief Procurement Officer (Support)

---

## Executive Summary

Collins Aerospace has inadequate vendor and third-party security management processes, with 47 vendors having production access but no formal security assessments conducted. This creates supply chain risk, potential data breach vectors, and non-compliance with CMMC Level 2 and Level 3 requirements for supply chain security management. Additionally, 8 vendors whose contracts have been terminated still retain active access to Collins systems, representing immediate security risk.

## Detailed Finding

### What We Found (Condition)

**No Formal Vendor Security Assessment Process:**
- 47 vendors with production system access
- 0 vendor security assessments conducted in past 24 months
- No security requirements in vendor contracts
- Vendor risk not assessed or categorized
- No ongoing monitoring of vendor security posture
- Relying on vendor self-attestation only

**Excessive Vendor Access:**
- 47 vendors with standing VPN access
- 23 vendors with elevated (admin) privileges
- 12 vendors with production database access
- Vendor accounts not segregated from internal accounts
- No just-in-time vendor access provisioning
- Access granted broadly, not limited to specific systems

**Terminated Vendor Access Not Removed:**
- 8 vendors with expired contracts still have active VPN accounts
- Average time since contract expiration: 11 months
- Longest: 19 months (contract expired March 2024, access active November 2025)
- No automated vendor off-boarding workflow
- Vendor access removal not part of contract closure process

**Lack of Vendor Risk Tiering:**
- All vendors treated equally regardless of risk
- High-risk vendors (data access) not distinguished from low-risk (facility maintenance)
- No vendor risk classification framework
- Assessment frequency not risk-based
- Insurance and security controls not verified for high-risk vendors

**Supply Chain Security Gaps:**
- No software bill of materials (SBOM) requirements
- Third-party software security not assessed
- Open source component tracking absent
- Vendor incident notification requirements not contractual
- No vendor breach response procedures

**Fourth-Party Risk Not Addressed:**
- Vendors' subcontractors not assessed
- No flow-down security requirements
- Limited visibility into vendor supply chains
- Critical dependencies on vendors' vendors

### What Should Be (Criteria)

**Industry Standards:**
- **NIST SP 800-161 Rev. 1:** Cybersecurity Supply Chain Risk Management
- **NIST SP 800-171:** 3.12.2 Develop and implement a SCRM plan
- **NIST SP 800-171:** 3.13.1 Monitor security controls in third-party systems
- **NIST SP 800-172:** 3.13.1e Enhanced monitoring for supply chain
- **CMMC 2.0 Level 2:** CA.L2-3.12.2, SA.L2-3.13.1 (Supply chain risk management)
- **CMMC 2.0 Level 3:** Enhanced supply chain monitoring and assessment
- **SOX Section 404:** Service organization controls (SOC 2) for critical vendors
- **ISO/IEC 27036:** Supplier relationships security

**Best Practices:**
- Vendor risk tiering (High/Medium/Low based on access and data)
- Risk-based assessment frequency:
  - High risk: Annual comprehensive assessments
  - Medium risk: Assessment every 2 years
  - Low risk: Initial assessment, then monitoring
- Security requirements in all vendor contracts
- Vendor security questionnaires (SIG, CAIQ, custom)
- SOC 2 Type II reports for vendors processing sensitive data
- Cyber insurance verification (minimum $5M coverage for high-risk vendors)
- Ongoing monitoring (SecurityScorecard, BitSight, or similar)
- Just-in-time vendor access (no standing privileges)
- Automated vendor off-boarding
- Software bill of materials (SBOM) for all software vendors
- Incident notification requirements (24-48 hours)

### Why This Happened (Cause)

**Root Causes:**

1. **Decentralized Vendor Management:**
   - IT, Operations, HR, Facilities all contract vendors independently
   - No central vendor risk management function
   - Procurement focuses on cost, not security
   - Security team not involved in vendor contracting
   - No coordinated vendor governance

2. **Resource Constraints:**
   - No dedicated third-party risk management (TPRM) team
   - Security team too small to assess 100+ vendors
   - Manual assessment processes don't scale
   - Vendor assessments viewed as "nice to have"
   - Competing priorities for limited resources

3. **Process Gaps:**
   - No vendor security policy
   - No vendor risk classification framework
   - Access provisioning process doesn't consider vendor status
   - Contract management system not integrated with IAM
   - Off-boarding process doesn't trigger access removal

4. **Technology Limitations:**
   - No TPRM platform or tool
   - Vendor assessment done via spreadsheets (if at all)
   - No automated continuous monitoring
   - No integration between procurement and security
   - Manual processes prone to errors and omissions

5. **Cultural Factors:**
   - "Vendors are trusted partners" mindset
   - Resistance to "burdening" vendors with security requirements
   - Fear that security requirements will increase costs
   - Business pressure to onboard vendors quickly
   - Security viewed as impediment to vendor relationships

### Business Impact (Consequence)

**Supply Chain Attack Risk:**
- 47 vendors = 47 potential attack vectors
- Attacker could compromise vendor, then access Collins via vendor credentials
- Example: SolarWinds supply chain attack cost victims $100M+
- Vendor compromise could provide persistent access
- Defense contractor supply chains increasingly targeted

**Data Breach Risk:**
- 12 vendors with database access could exfiltrate sensitive data
- Vendor employees not subject to Collins background checks
- Vendor security practices unknown and unverified
- CUI (Controlled Unclassified Information) potentially accessible to inadequately protected vendors

**Operational Disruption:**
- Vendor service failures could disrupt Collins operations
- No validated business continuity plans for critical vendors
- Dependency on single vendors not identified
- Alternative vendor options not evaluated

**Compliance Impact:**
- **CMMC Level 2 & 3:** Supply chain risk management requirements
  - CA.L2-3.12.2: Develop and implement a SCRM plan
  - SA.L2-3.13.1: Monitor security controls in third-party systems
  - CMMC Level 3 requires enhanced monitoring
- **SOX 404:** Service organization controls for outsourced functions
- **NIST 800-171:** 3.12.2 and 3.13.1 violations
- **Contract Requirements:** Customer security questionnaires flag gaps

**Specific September 2025 Incident Context:**
- While ransomware attack was not vendor-originated, attacker lateral movement included systems managed by vendors
- Vendor access could have provided alternate persistence mechanism
- Incident response complicated by vendor involvement
- Some vendors retained access during incident (unnecessary risk)

## Audit Testing Performed

### Vendor Access Analysis
- Identified all vendors with VPN access (47 vendors)
- Analyzed privilege levels (23 with admin rights)
- Cross-referenced with active contracts
- Identified 8 expired contracts with active access

**Sample Selection:**
- 100% of vendors with production database access (12 vendors)
- 100% of vendors with elevated privileges (23 vendors)
- 25% sample of vendors with standard access (12 of remaining 35)

### Vendor Security Assessment Review
- Requested vendor security assessment documentation
- Searched for security questionnaires, SOC 2 reports, insurance certificates
- Reviewed vendor contracts for security requirements
- Result: ZERO security assessments found

### Vendor Risk Categorization Attempt
- Analyzed vendor functions and data access
- Classified into risk tiers based on access:
  - HIGH RISK (16 vendors): Database access, CUI access, critical systems
  - MEDIUM RISK (21 vendors): Network access, non-CUI systems
  - LOW RISK (10 vendors): Limited access, non-sensitive
- Note: Collins has NO formal risk tiering; this was auditor analysis

### Contract Review
- Reviewed 15 vendor contracts (sample)
- Security requirements found: 0 of 15
- SLA requirements: 12 of 15
- Insurance requirements: 8 of 15
- Indemnification clauses: 15 of 15
- Cyber security insurance: 0 of 15
- Incident notification: 0 of 15

### Off-boarding Process Testing
- Tested 10 recent contract terminations
- Access removal timely: 2 of 10 (20%)
- Average time to access removal after contract end: 83 days
- 8 vendors identified with expired contracts and active access

### Continuous Monitoring Assessment
- Assessed use of vendor monitoring tools (SecurityScorecard, BitSight, etc.)
- Result: No continuous monitoring tools in use
- No vendor security posture tracking
- No breach notification monitoring

## Recommendations

### Immediate Actions (0-30 Days) - December 2025

**Emergency Vendor Access Review:**

**Week 1 (Dec 2-8):**
1. Disable 8 vendors with expired contracts immediately
2. Notify affected vendors via email
3. Document systems that may be impacted
4. Coordinate with business owners for any temporary extensions needed

**Week 2-3 (Dec 9-22):**
1. Review all 47 active vendor accounts
2. Business owner attestation: Is access still needed?
3. Validate contracts are active
4. Remove unnecessary access
5. Convert standing access to just-in-time where possible

**Week 4 (Dec 23-31):**
1. Vendor risk tiering (High/Medium/Low)
2. Prioritize high-risk vendors for immediate assessment
3. Create vendor inventory with risk classifications
4. Document access levels and business justification

**Target:** Clean vendor access list by December 31, 2025

**Vendor Security Questionnaire Development:**
- Create tiered security questionnaires:
  - High risk: Comprehensive (SIG Questionnaire or equivalent, ~150 questions)
  - Medium risk: Standard (~75 questions)
  - Low risk: Basic (~25 questions)
- Topics: Access controls, encryption, incident response, business continuity, compliance
- Require supporting evidence (SOC 2 reports, insurance certificates, certifications)

### Short-Term Actions (30-90 Days) - January-March 2026

**High-Risk Vendor Assessment Campaign (January-February 2026):**
- Identify 16 high-risk vendors
- Send comprehensive security questionnaires
- Request SOC 2 Type II reports (where applicable)
- Verify cyber insurance ($5M minimum coverage)
- Conduct on-site assessments for top 3 vendors (by criticality)
- Document findings and risk acceptance decisions

**Vendor Risk Management Policy Development (January 2026):**
- Formal TPRM policy and procedures
- Vendor risk classification framework
- Assessment frequency by risk tier
- Security requirements by risk tier
- Acceptable risk thresholds
- Remediation timeframes for vendor findings
- Vendor off-boarding procedures

**Contract Template Updates (February 2026):**
- Add security requirements to standard vendor contracts:
  - Information security and privacy obligations
  - Access control and authentication requirements
  - Incident notification (24-48 hours)
  - Right to audit provisions
  - Insurance requirements ($1M-$10M based on risk tier)
  - Data protection and encryption requirements
  - Subcontractor security flow-down requirements
  - Termination for security breach
- Legal review and approval
- Procurement team training on new requirements

**Vendor Access Management Improvements (March 2026):**
- Just-in-time vendor access implementation:
  - No standing VPN access for vendors
  - Time-bound access grants (maximum 8 hours)
  - Access requests via ticketing system
  - Business justification required
  - Automated expiration
- Vendor MFA requirement (no exceptions)
- Separate vendor AD organizational unit
- Enhanced logging for vendor activities

### Long-Term Actions (90-180 Days) - April-June 2026

**Third-Party Risk Management (TPRM) Platform (April-May 2026):**

**Platform Selection:**
- Evaluate: OneTrust Vendorpedia, ServiceNow VRM, Prevalent, Archer
- Key capabilities:
  - Automated security questionnaires
  - Document repository (contracts, SOC 2, insurance certificates)
  - Risk scoring and dashboard
  - Continuous monitoring integration (SecurityScorecard, BitSight)
  - Workflow for assessment and remediation
  - Contract management integration
  - Reporting and analytics

**Deployment:**
- April: Vendor selection and procurement
- May: Platform configuration and data migration
- June: Full operational deployment

**Investment:** $300K-$500K (Year 1)

**Continuous Monitoring Implementation (May 2026):**
- Subscribe to continuous monitoring service:
  - SecurityScorecard (preferred for ease of use)
  - BitSight
  - RiskRecon
- Integrate with TPRM platform
- Configure alerts for significant score changes
- Monthly security rating reviews
- Vendor engagement for remediation when scores drop

**Investment:** $50K-$150K annually (depends on vendor count)

**Supply Chain Security Program (June 2026):**
- Software Bill of Materials (SBOM) requirements for software vendors
- Open source component tracking and vulnerability management
- Vendor security incident response plan
- Supply chain threat intelligence integration
- Fourth-party risk assessment framework
- Vendor business continuity verification

**Vendor Governance Structure (June 2026):**
- **Vendor Risk Management Office:**
  - Vendor Risk Manager (1 FTE) - Start May 2026
  - Vendor Security Analysts (2 FTEs) - Start June 2026
  - Budget: $450K-$600K annually

- **Vendor Risk Committee:**
  - Members: CISO, CPO, CIO, Legal, Business Unit Heads
  - Frequency: Monthly
  - Responsibilities: Risk acceptance, policy exceptions, vendor terminations

**Contract Management Integration:**
- Integrate procurement system with TPRM platform
- Vendor security assessment before contract execution
- No new vendor contracts without security approval
- Automated vendor re-assessment triggers
- Contract renewal contingent on satisfactory security posture

**Vendor Off-Boarding Automation:**
- Contract management system integration with IAM
- Automated access removal workflow upon contract expiration
- 30-day advance notice to vendor and business owner
- Temporary extension process (requires justification)
- Automatic account disable if extension not approved

### Metrics and Governance

**Vendor Security Metrics:**
- Vendor assessment completion rate: Target 100% (by risk tier schedule)
- High-risk vendor assessment: 100% annually
- Medium-risk vendor assessment: 100% every 2 years
- Low-risk vendor assessment: 100% initially, then continuous monitoring
- Vendor access removal timeliness: Target <7 days from contract end
- Vendor security score average: Target >750 (SecurityScorecard scale)

**Reporting:**
- Monthly: Vendor security dashboard to CISO
- Quarterly: Vendor Risk Committee meeting
- Annually: Board Audit Committee vendor risk briefing

**KPIs:**
- Number of high-risk vendors: Reduce over time
- Vendor security questionnaire response rate: >95%
- Vendor incidents reported: Track and trend
- Vendor-related security events: Track and reduce
- Time to vendor off-boarding: <7 days average

## Management Response

**Management Agrees:** Yes  
**Target Completion Date:** June 30, 2026  
**Responsible Party:** CISO (Primary), Chief Procurement Officer (Support)

**Management Comments:**
"Management acknowledges the lack of formalized vendor security management processes. The supply chain represents an increasing attack surface that requires systematic risk management. We commit to establishing a comprehensive third-party risk management program aligned with CMMC requirements and industry best practices."

**Action Plan:**

| Month | Key Activities | Investment | Milestones |
|-------|---------------|-----------|------------|
| **Dec 2025** | Emergency vendor review, access cleanup | $25K | 8 terminated vendors disabled |
| **Jan 2026** | High-risk assessments, policy development | $75K | 16 vendors assessed |
| **Feb 2026** | Contract template updates, continued assessments | $50K | New contract requirements |
| **Mar 2026** | JIT vendor access, medium-risk assessments | $100K | JIT access operational |
| **Apr 2026** | TPRM platform selection | $25K | Platform selected |
| **May 2026** | TPRM deployment, continuous monitoring | $400K | Platform operational |
| **Jun 2026** | Full program operational, remaining assessments | $200K | All vendors assessed |

**Total Investment:** $875K (Year 1) + $600K staffing = $1.475M

**Resource Commitments:**
- **Staffing:**
  - Vendor Risk Manager (1 FTE) - Start May 2026
  - Vendor Security Analysts (2 FTEs) - Start June 2026
  - Annual cost: $450K-$600K

- **Technology:**
  - TPRM platform: $300K-$500K (Year 1)
  - Continuous monitoring: $50K-$150K annually
  - Assessment tools: $25K

- **External Services:**
  - Vendor on-site assessments: $75K-$100K
  - Policy and framework development: $50K-$75K
  - Platform implementation consulting: $100K-$150K

**Success Criteria:**
- 100% of high-risk vendors assessed by March 31, 2026
- TPRM platform operational by June 30, 2026
- Zero vendors with expired contracts and active access
- 100% of new contracts include security requirements
- Just-in-time vendor access implemented
- Vendor Risk Management Office operational
- Continuous monitoring covering all high-risk vendors

## References

- NIST Special Publication 800-161 Revision 1 (Cybersecurity Supply Chain Risk Management)
- NIST Special Publication 800-171 Revision 2 (3.12.2, 3.13.1)
- NIST Special Publication 800-172 (3.13.1e - Enhanced Supply Chain)
- CMMC 2.0 Level 2 & 3 Requirements (Supply Chain domain)
- ISO/IEC 27036:2021 (Supplier Relationships Security)
- COBIT 2019: APO10 - Managed Vendors
- SOX Section 404 Service Organization Controls Guidance
- Vendor Access Audit Report
- Vendor Contract Review Sample

---

**Finding Status:** Open  
**Last Updated:** November 28, 2025  
**Next Review:** March 31, 2026 (High-risk vendor assessments completion)

**Note:** While rated MEDIUM severity, supply chain attacks are increasing in frequency and sophistication. This finding should be elevated to HIGH if any high-risk vendor has access to CUI or critical systems. The MEDIUM rating reflects current threat materialization, not potential impact.
