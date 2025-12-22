# COLLINS AEROSPACE IT AUDIT FINDINGS REPORT

**General Computer Controls Audit - Information Security**

---

**Audit Team:**  
Noble Antwi, Lead IT Auditor  
Krupa Prakash Panchal, Senior IT Auditor

**Report Date:** November 28, 2025  
**Audit Period:** September 2025 - November 2025  
**Company:** Collins Aerospace (RTX Corporation Subsidiary)  
**Headquarters:** Charlotte, North Carolina

---

## EXECUTIVE SUMMARY

Between September and November 2025, our internal IT audit team conducted a comprehensive General Computer Controls audit focusing on Information Security at Collins Aerospace. This post-incident audit was initiated following the September 19, 2025 ransomware attack that compromised the MUSE (Multi-User System Environment) platform, causing significant disruptions at over 170 airports worldwide and forcing manual operations at major European hubs including London Heathrow, Brussels Airport, Berlin Brandenburg, and Dublin Airport.

The audit examined information security controls across critical systems, with particular emphasis on controls relevant to our role as a defense contractor subject to CMMC Level 3 certification requirements and SOX compliance obligations. Our assessment utilized established frameworks including COBIT 2019, NIST SP 800-53, NIST Cybersecurity Framework, and CMMC 2.0 requirements to evaluate control design and operating effectiveness.

We identified **five significant findings** representing control deficiencies that require immediate management attention. These findings span critical areas including multi-factor authentication implementation, privileged access management, incident response capabilities, backup and recovery procedures, and vendor security oversight. Each finding contributed directly or indirectly to the successful September 2025 ransomware attack and represents ongoing risk to our operations, customer commitments, and regulatory compliance.

The severity distribution of our findings reflects the urgent nature of remediation required:
- **Critical Risk:** 2 findings (Findings #1 and #4)
- **High Risk:** 2 findings (Findings #2 and #3)  
- **Medium Risk:** 1 finding (Finding #5)

Management has reviewed these findings and provided responses with committed remediation timelines. However, the pattern of control weaknesses discovered during this audit suggests systemic gaps in our information security governance that extend beyond individual technical controls. As we approach our Q2 2026 CMMC Level 3 certification deadline and continue managing approximately $2.3 billion in defense contracts, addressing these findings is not optional—it's essential for business continuity.

---

## AUDIT SCOPE AND OBJECTIVES

### Scope

This IT audit examined information security general controls for the following in-scope systems and locations:

**Systems Assessed:**
- MUSE platform (airport check-in and baggage processing)
- Corporate Active Directory and identity management infrastructure
- Financial reporting applications (SAP ERP)
- Engineering and product development systems
- Cloud infrastructure (AWS and Azure environments)
- Remote access and VPN systems

**Locations:**
- Charlotte, NC headquarters and IT operations center
- Remote review of European operations (post-incident systems)
- Cloud service provider environments

**Time Period:** September 1, 2025 through November 15, 2025

### Audit Objectives

Our primary objectives were to:

1. Conduct comprehensive post-incident root cause analysis of the September 2025 ransomware attack
2. Assess the design and operating effectiveness of information security controls
3. Evaluate CMMC Level 3 readiness and identify gaps in NIST SP 800-171 and SP 800-172 implementation
4. Validate SOX IT general controls effectiveness for financial reporting systems
5. Identify systemic vulnerabilities that could enable future cyberattacks
6. Provide actionable recommendations for security posture improvement

### Standards and Frameworks Referenced

Our audit methodology incorporated the following authoritative standards:

- **COBIT 2019:** Specifically DSS05 (Managed Security Services) and APO13 (Managed Security)
- **NIST SP 800-53 Rev. 5:** Security and Privacy Controls for Information Systems
- **NIST Cybersecurity Framework v1.1:** Identify, Protect, Detect, Respond, Recover functions
- **NIST SP 800-30:** Guide for Conducting Risk Assessments  
- **CMMC 2.0 Level 3 Requirements:** Including NIST SP 800-171 (110 controls) and NIST SP 800-172 (24 enhanced controls)
- **COSO 2013 Internal Control Framework:** For SOX ITGC assessment
- **ISO/IEC 27001:2022:** Information security management system requirements

---

## METHODOLOGY

Our audit employed a risk-based approach combining multiple assessment techniques:

**Planning Phase (Weeks 1-2):**
- Reviewed prior year audit findings and management responses
- Conducted interviews with IT leadership, security team, and MUSE platform owners
- Analyzed incident response documentation from September 2025 attack
- Performed preliminary risk assessment using NIST SP 800-30 methodology

**Fieldwork Phase (Weeks 3-8):**
- Executed detailed control testing across 67 control objectives
- Performed technical vulnerability assessments on in-scope systems
- Reviewed security policies, procedures, and configuration standards
- Conducted access control testing (logical and privileged access reviews)
- Validated backup and disaster recovery procedures
- Assessed vendor security management processes

**Reporting Phase (Weeks 9-10):**
- Analyzed findings and determined root causes
- Developed recommendations aligned with industry frameworks
- Validated findings with system owners and management
- Documented management responses and remediation commitments

We tested controls using various techniques including inquiry, observation, inspection of documentation, and re-performance of control activities. Our sample sizes were determined based on population risk characteristics and testing objectives, generally ranging from 25-40 items per control depending on automation level and control frequency.

---

## DETAILED AUDIT FINDINGS

### FINDING #1: Inadequate Multi-Factor Authentication (MFA) Implementation for Privileged and Remote Access

**Severity:** CRITICAL

#### Condition (What We Observed)

During our review of authentication controls, we discovered that multi-factor authentication (MFA) was not consistently enforced across critical access points that ultimately facilitated the September 2025 ransomware attack. Specifically:

1. **Legacy VPN Systems:** The VPN system used to access the MUSE platform production environment did not require MFA for all users. Of 147 accounts with VPN access to MUSE systems, 89 accounts (60.5%) relied solely on username and password authentication without secondary verification.

2. **Privileged Administrative Accounts:** Testing of 34 domain administrator and system administrator accounts revealed that 12 accounts (35.3%) could authenticate to critical systems without MFA, including accounts with access to:
   - Active Directory domain controllers
   - Database administration tools for MUSE platform
   - AWS root account and elevated IAM roles
   - Financial reporting system administrative consoles

3. **Service Accounts:** We identified 23 service accounts with elevated privileges across production environments that used static passwords without proper compensating controls. These accounts had not undergone password rotation in over 18 months. While MFA is not typically applicable to service accounts (as they are intended for non-interactive use), industry best practices recommend compensating controls such as certificate-based or key-based authentication and automated credential rotation, which were not in place. Additionally, several of these service accounts were enabled for interactive login, despite being intended for non-interactive service use only.

4. **Emergency Access Procedures:** The "break glass" emergency access procedures for system recovery scenarios did not require MFA verification, creating a potential attack vector.

Post-incident forensic analysis confirmed that the initial breach vector was a compromised VPN credential that did not have MFA protection. The threat actor used these credentials to establish persistent access to the MUSE platform infrastructure, eventually deploying HardBit ransomware across production systems.

#### Standards, Frameworks, Guidelines, and Best Practices

**NIST SP 800-53 Rev. 5:**
- **IA-2(1) - Multi-Factor Authentication to Privileged Accounts:** "The information system implements multi-factor authentication for access to privileged accounts."
- **IA-2(2) - Multi-Factor Authentication to Non-Privileged Accounts:** "The information system implements multi-factor authentication for access to non-privileged accounts for network access."
- **IA-2(6) - Access to Accounts - Separate Device:** "The information system implements multi-factor authentication using mechanisms that are independent and separate from the system being accessed."

**CMMC 2.0 Level 2/3 Requirements:**
- **AC.L2-3.1.12:** Use MFA for local and network access to privileged accounts and for network access to non-privileged accounts.
- **NIST SP 800-171 Control 3.5.3:** Require MFA for all network access to privileged and non-privileged accounts.

**COBIT 2019:**
- **DSS05.04:** Manage identity and logical access, including implementation of MFA for sensitive system access
- **APO13.01:** Establish and maintain an information security management system considering authentication requirements

**NIST Cybersecurity Framework:**
- **PR.AC-1:** Identities and credentials are issued, managed, verified, revoked, and audited for authorized devices, users, and processes
- **PR.AC-7:** Users, devices, and other assets are authenticated commensurate with the risk of the transaction

**Industry Best Practice:** The Colonial Pipeline ransomware attack in May 2021 was similarly enabled by a legacy VPN account without MFA. The cybersecurity community widely recognizes MFA as a fundamental control for preventing credential-based attacks, with CISA including MFA implementation in their "Shields Up" guidance and Cybersecurity Performance Goals.

#### Root Cause

The root cause is multifaceted:

1. **Incomplete Security Architecture Migration:** Collins Aerospace is in the middle of a multi-year infrastructure modernization program. The legacy VPN infrastructure predates the company's 2018 formation through the Rockwell Collins/UTC Aerospace merger and was scheduled for replacement in Q4 2025—three months after the attack occurred. IT management made a conscious decision to delay MFA implementation on the legacy system to avoid "throwaway work" on infrastructure that would soon be retired.

2. **Lack of Risk-Based Prioritization:** The decision to defer MFA implementation was not accompanied by compensating controls or enhanced monitoring. Management did not conduct a formal risk assessment using NIST SP 800-30 methodology to evaluate the residual risk of operating without MFA during the transition period.

3. **Inadequate Privileged Access Governance:** There is no centralized privileged access management (PAM) solution deployed. Privileged accounts are managed individually across different platforms without consistent authentication requirements or session monitoring.

4. **Service Account Management Gaps:** No formal service account lifecycle management process exists. Service accounts are created on an ad-hoc basis without standardized authentication methods, rotation schedules, or regular reviews.

#### Impact to the Business

The absence of MFA controls directly enabled the September 2025 ransomware attack, resulting in:

**Immediate Operational Impact:**
- Disruption to 170+ airports globally using the MUSE platform
- Approximately 217 flight cancellations between September 19-21 across affected airports
- Forced reversion to manual check-in processes at major international hubs
- Brussels Airport requesting 50% reduction in Monday flight schedules
- Multi-day recovery period with ongoing passenger delays

**Financial Impact:**
- Estimated direct incident response costs exceeding $15 million (forensic investigation, legal counsel, regulatory notifications, system restoration)
- Potential customer contract penalties and service level agreement violations
- Insurance deductible payments and premium increases for cyber liability coverage
- Lost productivity during system restoration period

**Regulatory and Compliance Risk:**
- Significant CMMC Level 3 certification jeopardy—MFA for privileged access is explicitly required by NIST SP 800-171 Control 3.5.3
- Potential SOX internal control deficiency for financial systems lacking adequate authentication controls
- European GDPR notification requirements if passenger data was exfiltrated (investigation ongoing)
- Possible enforcement action from EU Agency for Cybersecurity (ENISA)

**Reputational Damage:**
- Widespread international media coverage of the cyberattack
- Customer confidence erosion among airline and airport partners
- Competitive disadvantage in new airport system procurements

**Strategic Risk:**
- $2.3 billion in defense contracts at risk if CMMC Level 3 certification is delayed beyond Q2 2026
- Potential loss of "trusted partner" status with critical infrastructure customers
- Increased scrutiny from parent company RTX Corporation on cybersecurity governance

If this control weakness is not remediated, Collins Aerospace remains vulnerable to credential-based attacks, which represent approximately 61% of initial access vectors in ransomware incidents according to Verizon's 2025 Data Breach Investigations Report.

#### Recommendations

We recommend the following remediation actions in priority order:

**Immediate Actions (0-30 days):**

1. **Emergency MFA Deployment:** Immediately implement MFA for all VPN access, privileged accounts, and remote access to production systems. Use a phased approach starting with highest-risk systems (MUSE platform, Active Directory, financial systems, cloud environments). Deploy MFA using push notification or FIDO2-compliant hardware tokens rather than SMS-based authentication which is vulnerable to SIM swapping attacks.

2. **Service Account Audit and Remediation:** Conduct emergency audit of all service accounts with elevated privileges. Implement certificate-based authentication, key-based authentication, or managed service identities (which provide the compensating controls that replace the need for MFA on service accounts). For accounts requiring passwords, enforce immediate password rotation, disable interactive login capabilities, and document business justification for continued use. Implement automated credential rotation mechanisms.

3. **Compensating Controls:** Until full MFA deployment is complete, implement enhanced monitoring and detection:
   - Enable alerting for all privileged account authentications from new geographic locations
   - Implement impossible travel detection using SIEM correlation rules
   - Require manager approval for after-hours VPN connections to production systems

**Short-Term Actions (30-90 days):**

4. **Privileged Access Management (PAM) Solution:** Accelerate the procurement and deployment of an enterprise PAM solution (e.g., CyberArk, BeyondTrust, Delinea). The PAM solution should provide:
   - Centralized vault for privileged credentials with automatic rotation
   - Session recording and monitoring for privileged access
   - Just-in-time access provisioning with MFA verification
   - Integration with existing Active Directory and cloud IAM systems

5. **Conditional Access Policies:** Implement risk-based conditional access policies using Azure AD/Entra ID (for Microsoft systems) and similar capabilities in AWS and other cloud platforms. Policies should consider:
   - User role and group membership
   - Device compliance status
   - Geographic location and IP reputation
   - Authentication method strength
   - Sign-in risk score

6. **Emergency Access Procedure Revision:** Redesign break-glass procedures to include MFA requirements using offline mechanisms (e.g., physical hardware tokens stored in secure locations). Document and test emergency access procedures quarterly.

**Medium-Term Actions (90-180 days):**

7. **Zero Trust Architecture Roadmap:** Develop comprehensive zero trust architecture roadmap aligned with NIST SP 800-207 Zero Trust Architecture principles. The roadmap should include:
   - Phased elimination of implicit trust based on network location
   - Micro-segmentation of critical systems
   - Continuous verification of user and device trust
   - Data-centric security controls

8. **Authentication Policy Standardization:** Develop and publish enterprise-wide authentication standards that specify MFA requirements based on data classification and system criticality. Ensure standards align with CMMC 2.0, NIST SP 800-171, and SOX requirements.

9. **Regular Access Reviews:** Implement quarterly access reviews for all privileged accounts and semi-annual reviews for VPN and remote access. Use automated tools to identify orphaned accounts, excessive permissions, and policy violations.

**Management Response:**

*"Management acknowledges this critical finding and agrees with the audit team's assessment. The absence of MFA on legacy VPN systems was a known risk that we had accepted during our infrastructure modernization program. In hindsight, this was an incorrect risk decision that directly contributed to the September 2025 incident.*

*We have already initiated emergency MFA deployment across all VPN and remote access systems, with completion targeted for December 15, 2025. We are accelerating our PAM solution procurement with contract execution expected by January 31, 2026 and production deployment by April 30, 2026.*

*We commit to implementing all recommendations within the specified timeframes. The CISO will provide monthly progress updates to the Audit Committee beginning December 2025.*

*Responsible Party: Chief Information Security Officer (CISO)*  
*Target Completion: April 30, 2026 (all recommendations)"*

---

### FINDING #2: Insufficient Privileged Access Reviews and Excessive Standing Permissions

**Severity:** HIGH

#### Condition (What We Observed)

Our review of privileged access governance revealed significant deficiencies in how Collins Aerospace manages, monitors, and reviews elevated permissions across IT systems. These deficiencies create excessive risk of insider threats, account compromise, and compliance violations.

Specific observations include:

1. **Absence of Regular Access Reviews:** Collins Aerospace does not conduct periodic reviews of privileged access. The last documented review of domain administrator accounts occurred in March 2023—over 30 months ago. No systematic process exists for reviewing cloud IAM roles, database administrator accounts, or application-level privileged access.

2. **Excessive Standing Privileges:** Through our testing, we identified widespread assignment of standing privileged access rather than just-in-time or time-limited elevation:
   - 47 users hold permanent domain administrator rights in Active Directory
   - 34 users maintain standing AWS administrative access across production accounts
   - 23 database administrators have permanent "sysadmin" or equivalent roles in production databases
   - 89 users have local administrator rights on their workstations without business justification

3. **Orphaned and Stale Accounts:** Our analysis of privileged accounts revealed:
   - 12 domain administrator accounts belonging to terminated employees (separation dates ranging from 8 to 26 months prior)
   - 18 privileged service accounts created for temporary projects that were never deprovisioned
   - 9 "shared" administrator accounts (e.g., "dbadmin", "netadmin") used by multiple individuals without individual accountability

4. **Segregation of Duties Violations:** We identified several users with conflicting privileged roles that violate segregation of duties principles:
   - 5 developers with production database administrative access who can deploy code and directly modify production data
   - 3 IT auditors with domain administrator rights (preventing independence)
   - 2 accounts with both SAP super-user access and ability to modify financial reporting configurations

5. **Inadequate Monitoring:** Privileged account activity is not subject to enhanced logging or monitoring. Security Information and Event Management (SIEM) correlation rules do not distinguish between standard user actions and privileged account activities, making anomalous behavior difficult to detect.

During our interview with the IT operations manager, we learned that the organization relies on an "honor system" for privileged access management, expecting managers to request access removal when employees change roles or leave the company. This informal process is clearly ineffective based on our testing results.

#### Standards, Frameworks, Guidelines, and Best Practices

**NIST SP 800-53 Rev. 5:**
- **AC-2 - Account Management:** "The organization manages information system accounts, including establishing, activating, modifying, reviewing, disabling, and removing accounts."
- **AC-2(7) - Privileged User Accounts:** "The organization employs a process for granting access to privileged accounts that is reviewed and approved by designated personnel."
- **AC-6 - Least Privilege:** "The organization employs the principle of least privilege, allowing only authorized accesses for users (and processes acting on behalf of users) which are necessary to accomplish assigned tasks."
- **AC-6(2) - Non-Privileged Access for Non-Security Functions:** "The organization requires that users of information system accounts, or roles, with access to security functions or security-relevant information, use non-privileged accounts or roles, when accessing non-security functions."

**CMMC 2.0 Requirements:**
- **AC.L2-3.1.5:** Employ the principle of least privilege, including specific security functions and privileged accounts.
- **NIST SP 800-172 (Level 3) Control 3.1.1e:** Periodically review and update the composition of security-relevant groups (required for CMMC Level 3).

**COBIT 2019:**
- **DSS05.04:** Manage identity and logical access—specifically the practice "Manage user identities and logical access" which requires periodic reviews
- **APO07.02:** Maintain alignment of workforce capability and capacity with enterprise strategy, including deprovisioning of access when roles change
- **DSS05.05:** Manage physical and logical access to assets—ensuring access rights are reviewed and updated regularly

**Sarbanes-Oxley Act (SOX) Requirements:**
- SOX Section 404 requires effective internal controls over financial reporting. Excessive and unreviewable privileged access to financial systems represents a significant ITGC deficiency that could result in material weakness determination.

**ISO/IEC 27001:2022:**
- **Control 5.18 - Access Rights:** "Access rights to information and other associated assets shall be provisioned, reviewed, modified and removed in accordance with the organization's topic-specific policy on and rules for access control."

**Industry Best Practice:** The principle of least privilege is universally recognized as a fundamental security control. The 2025 CIS Critical Security Controls lists "Account Management" (CIS Control 5) as one of the top implementation priorities. Gartner recommends that privileged access reviews occur quarterly for highly sensitive systems and at minimum semi-annually for standard systems.

#### Root Cause

The root causes of excessive and unmanaged privileged access include:

1. **Lack of Formal Governance Process:** Collins Aerospace does not have a documented privileged access management policy or procedure. Roles and responsibilities for granting, reviewing, and revoking privileged access are undefined. No governing committee or approval workflow exists for privileged access requests.

2. **Organizational Silos:** Different IT teams manage their own privileged access independently (Active Directory team, database team, cloud team, application teams). There is no centralized visibility into who has privileged access across the enterprise.

3. **Cultural Acceptance of Over-Permissioning:** Interviews with IT management revealed a culture of granting standing privileged access "just in case" rather than implementing just-in-time access models. Managers expressed concern that implementing least privilege would slow down operational response times.

4. **Absence of PAM Technology:** Without a privileged access management solution, implementing fine-grained access controls, time-limited elevation, and session monitoring is operationally difficult. The manual burden of managing privileged access leads to shortcuts and informal processes.

5. **Insufficient HR-to-IT Integration:** The employee termination process does not include automated workflow to IT systems for immediate access revocation. Terminated employee accounts remain active until IT performs a periodic cleanup, which occurs irregularly.

6. **Resource Constraints:** The IT security team is understaffed relative to the size and complexity of the infrastructure. With only 8 security engineers supporting enterprise IT operations, conducting manual privileged access reviews has been deprioritized in favor of responding to incidents and addressing urgent vulnerabilities.

#### Impact to the Business

The impact of unmanaged privileged access includes:

**Security Risk:**
- **Expanded Attack Surface:** Each unnecessary privileged account represents a potential target for attackers. If compromised through phishing, malware, or credential stuffing, these accounts provide immediate elevated access to critical systems.
- **Insider Threat Exposure:** Terminated employees or contractors with unrevo ked privileged access could intentionally or inadvertently cause damage. The average time to detect insider threats is 85 days according to the Ponemon Institute, and former employee accounts represent high-risk vectors.
- **Lateral Movement Facilitation:** In the September 2025 attack, the threat actor used a compromised standard account to access the VPN, then likely escalated privileges by exploiting an orphaned administrator account. Excessive privileged access makes lateral movement and privilege escalation significantly easier for attackers.

**Compliance Risk:**
- **CMMC Level 3 Jeopardy:** NIST SP 800-171 Control 3.1.5 (least privilege) and SP 800-172 enhanced controls for privileged access review are mandatory for CMMC Level 3 certification. Our current state represents a material gap in compliance.
- **SOX Control Deficiency:** The combination of excessive privileges and lack of reviews constitutes a significant deficiency in IT general controls for financial reporting. External auditors may identify this as a material weakness.
- **Failed Audit Readiness:** We are not prepared for the government-led CMMC Level 3 assessment by DIBCAC, which will rigorously test privileged access controls.

**Operational Risk:**
- **Accidental Misconfiguration:** Users with standing privileged access may inadvertently make changes to production systems without proper change control, causing service disruptions.
- **Compliance Burden:** The inability to quickly demonstrate "who has access to what" creates significant manual effort during audits, penetration tests, and regulatory examinations.

**Financial Risk:**
- If privileged access deficiencies contribute to a future security incident, the organization could face regulatory fines, customer penalties, and increased insurance costs.
- Estimated annual risk exposure from unmanaged privileged access: $5-8 million based on likelihood and impact analysis.

#### Recommendations

We recommend implementing a comprehensive privileged access governance program:

**Immediate Actions (0-30 days):**

1. **Emergency Privileged Access Audit:** Conduct organization-wide audit of all privileged access across all systems. Document:
   - Complete inventory of privileged accounts (user accounts, service accounts, emergency accounts)
   - Business justification for each privileged assignment
   - Last authentication date and usage patterns
   - Account ownership and approval authority

2. **Immediate Remediation of High-Risk Issues:**
   - Disable all orphaned accounts identified in the audit (especially terminated employees)
   - Remove privileged access from accounts with conflicting duties (e.g., IT auditors)
   - Eliminate shared administrator accounts—require individual named accounts for all privileged access
   - Remove local administrator rights from standard user workstations unless documented business need exists

3. **Temporary Manual Review Process:** Until automated processes are implemented, establish quarterly manual review of privileged access:
   - IT management reviews and approves all domain administrators
   - Application owners review and approve all application-level privileged users
   - Cloud administrators review all AWS/Azure IAM roles with administrative permissions
   - Database team reviews all database administrator accounts

**Short-Term Actions (30-90 days):**

4. **Privileged Access Management Policy:** Develop and publish comprehensive PAM policy including:
   - Definition of "privileged access" for Collins Aerospace
   - Principles of least privilege and just-in-time access
   - Approval requirements for privileged access requests
   - Review frequency and responsibilities
   - Time limits for temporary elevated access
   - Monitoring and auditing requirements

5. **HR-IT Process Integration:** Implement automated workflow from HR termination process to IT access revocation:
   - Employee termination triggers immediate automated notification to IT security
   - Privileged access disabled within 1 hour of termination
   - Standard access disabled within 4 hours
   - Complete account deletion after 30-day retention period (to preserve forensic evidence if needed)

6. **Enhanced Logging and Monitoring:** Configure SIEM to generate alerts for:
   - Any authentication using privileged accounts
   - Privileged account usage from unusual locations or at unusual times
   - Failed privileged authentication attempts (3+ failures)
   - Additions or modifications to privileged groups
   - Privileged access to financial reporting systems

**Medium-Term Actions (90-180 days):**

7. **Just-in-Time Access Model:** Redesign privileged access to eliminate standing permissions:
   - Implement time-limited privilege elevation (e.g., 4-hour or 8-hour maximum)
   - Require manager approval for privilege elevation requests
   - Automatically revoke elevated access when time period expires
   - Document all elevation requests with business justification

8. **Segregation of Duties Enforcement:** Implement automated controls to prevent conflicting access assignments:
   - Configure Active Directory and IAM systems to detect and prevent SoD violations
   - Create conflicting role matrix documenting incompatible privilege combinations
   - Require exception approval (by CFO or CAO) for any SoD violations with documented compensating controls

9. **Role-Based Access Control (RBAC):** Move from individual privilege assignments to role-based model:
   - Define standard roles for common job functions (e.g., "Database Administrator", "Network Engineer", "SAP Basis Administrator")
   - Assign privileges to roles rather than individual users
   - Assign users to roles based on job function
   - Review role definitions and assignments quarterly

10. **PAM Solution Integration:** Once PAM solution is deployed (per Finding #1), integrate with privileged access governance processes:
    - Migrate all privileged credentials to PAM vault
    - Implement session recording for all privileged access sessions
    - Configure automated periodic password rotation
    - Enable privilege elevation workflow through PAM portal

**Management Response:**

*"Management acknowledges this high-risk finding. Our current privileged access management practices do not meet industry standards or our own compliance requirements.*

*We will immediately conduct the privileged access audit and remediate high-risk issues by December 31, 2025. The quarterly manual review process will begin in January 2026 and continue until automated processes are operational.*

*We commit to developing the PAM policy by February 28, 2026 and implementing the just-in-time access model by May 31, 2026 in conjunction with our PAM solution deployment.*

*Responsible Party: Director of IT Operations (with CISO oversight)*  
*Target Completion: May 31, 2026 (full program implementation)"*

---

### FINDING #3: Inadequate Incident Response Capabilities and Documentation

**Severity:** HIGH

#### Condition (What We Observed)

Our assessment of Collins Aerospace's incident response capabilities revealed significant gaps in preparation, detection, analysis, containment, and recovery procedures. The September 2025 ransomware attack exposed these weaknesses, resulting in delayed response, extended system downtime, and incomplete forensic analysis.

Specific observations include:

1. **Outdated Incident Response Plan:** The current incident response plan was last updated in August 2021—over four years ago. The plan does not address:
   - Ransomware-specific response procedures
   - Cloud infrastructure incident response (AWS, Azure)
   - Coordination with external stakeholders (airports, airlines, law enforcement)
   - Communications protocol for critical infrastructure incidents
   - Recovery time objectives (RTOs) and recovery point objectives (RPOs) for the MUSE platform

2. **Insufficient Incident Response Team:** Collins Aerospace does not have a formally designated Computer Security Incident Response Team (CSIRT) with defined roles, responsibilities, and 24/7 coverage:
   - No on-call rotation for security incidents
   - Incident response depends on ad-hoc availability of security team members
   - No documented escalation procedures or authority levels for incident commanders
   - No dedicated incident response coordinator role

3. **Limited Detection Capabilities:** During the September 2025 attack, the ransomware operated undetected for approximately 16-18 hours before encryption activities triggered alerts. Our testing revealed:
   - Endpoint Detection and Response (EDR) tools deployed on only 64% of servers and 71% of workstations
   - SIEM correlation rules not tuned to detect ransomware indicators (e.g., rapid file encryption, unusual PowerShell activity, disabled backup agents)
   - No network traffic analysis tools to detect lateral movement or command-and-control communications
   - Limited log retention (90 days) preventing historical analysis of attacker persistence mechanisms

4. **Incomplete Forensic Evidence Preservation:** The incident response to the September 2025 attack did not follow forensic best practices:
   - Affected systems were immediately powered off without memory acquisition
   - No forensic disk images created before systems were rebuilt
   - Network traffic captures (PCAP) not retained beyond standard 7-day retention window
   - Incomplete documentation of attacker tactics, techniques, and procedures (TTPs)
   - No formal chain of custody for evidence collection

5. **No Tabletop Exercises or Testing:** The incident response plan has never been tested through tabletop exercises or simulated attack scenarios. Security team members are unfamiliar with their incident response roles, evidenced by confusion and miscommunication during the actual September attack.

6. **Inadequate External Coordination:** Collins Aerospace does not have pre-established relationships with:
   - FBI or other law enforcement cyber divisions
   - Forensic investigation firms (had to research and contract during active incident)
   - Cyber insurance carrier incident response protocols
   - Crisis communications firms for media and stakeholder management

During interviews, the CISO acknowledged that "we learned more about our incident response gaps during one real attack than we had in the previous four years of security operations."

#### Standards, Frameworks, Guidelines, and Best Practices

**NIST SP 800-53 Rev. 5:**
- **IR-1 - Policy and Procedures:** "The organization develops, documents, and disseminates to designated personnel an incident response policy and procedures."
- **IR-4 - Incident Handling:** "The organization implements an incident handling capability for incidents that is consistent with the incident response plan."
- **IR-4(1) - Automated Incident Handling Processes:** "The organization employs automated mechanisms to support the incident response process."
- **IR-5 - Incident Monitoring:** "The organization tracks and documents information system security incidents."
- **IR-8 - Incident Response Plan:** "The organization develops an incident response plan that provides the organization with a roadmap for implementing its incident response capability."

**NIST SP 800-61 Rev. 2 - Computer Security Incident Handling Guide:**
- Provides comprehensive guidance on establishing incident response capabilities including:
  - Preparation (policies, procedures, tools, training)
  - Detection and Analysis
  - Containment, Eradication, and Recovery
  - Post-Incident Activity (lessons learned)

**CMMC 2.0 Requirements:**
- **IR.L2-3.6.1:** Establish an operational incident-handling capability for organizational information systems that includes preparation, detection, analysis, containment, recovery, and user response activities.
- **IR.L2-3.6.2:** Track, document, and report incidents to designated officials and/or authorities both internal and external to the organization.

**COBIT 2019:**
- **DSS02.01:** Define incident classification scheme and define incident priorities
- **DSS02.02:** Record, classify, and prioritize requests and incidents  
- **DSS02.07:** Monitor and report service status

**NIST Cybersecurity Framework:**
- **DE.CM-1:** The network is monitored to detect potential cybersecurity events
- **DE.DP-4:** Event detection information is communicated
- **RS.RP-1:** Response plan is executed during or after an incident
- **RS.CO-3:** Information is shared consistent with response plans
- **RS.AN-1:** Notifications from detection systems are investigated
- **RC.RP-1:** Recovery plan is executed during or after a cybersecurity incident

**Industry Best Practice:** According to IBM's 2025 Cost of a Data Breach Report, organizations with an incident response team and tested IR plans reduce breach costs by an average of $2.66 million compared to those without. The median time to detect and contain a ransomware attack for well-prepared organizations is 7 days versus 21+ days for unprepared organizations.

#### Root Cause

The inadequate incident response capability stems from:

1. **Lack of Executive Prioritization:** Incident response planning has not been prioritized at the executive level. Security budget has historically focused on preventive controls (firewalls, antivirus) rather than detective and response capabilities. The business case for incident response investment was rejected in FY2023 and FY2024 budget cycles.

2. **Resource Constraints:** The IT security team of 8 people is responsible for both preventive security operations AND incident response. There are no dedicated incident responders, and the team lacks specialized skills in digital forensics, malware analysis, and threat hunting.

3. **Rapid Growth Through M&A:** The 2018 merger that created Collins Aerospace resulted in complex, heterogeneous IT infrastructure from multiple acquired companies. Incident response planning did not keep pace with infrastructure growth and complexity.

4. **Cultural Complacency:** Prior to September 2025, Collins Aerospace had not experienced a significant security incident. This created a false sense of security and reduced urgency for incident response investments. As one IT manager stated, "We didn't think it would happen to us."

5. **Lack of Cyber Insurance Engagement:** While Collins Aerospace maintains cyber liability insurance, the organization had not engaged with the insurer's incident response resources or pre-approved vendor lists. This created delays in activating forensic and legal support during the actual incident.

#### Impact to the Business

The inadequate incident response capabilities directly impacted the severity and duration of the September 2025 attack:

**Extended Detection Time:**
- 16-18 hour delay between initial encryption and alert generation allowed ransomware to spread across 1,000+ systems
- Delayed detection resulted in more extensive data encryption and greater recovery complexity

**Prolonged Recovery Period:**
- Without tested recovery procedures, system restoration took 5-7 days
- Lack of documented RTOs meant recovery priorities were determined ad-hoc during the crisis
- Incomplete backups and inadequate recovery testing extended downtime

**Incomplete Root Cause Analysis:**
- Failure to preserve forensic evidence prevents complete understanding of attack timeline
- Unable to determine definitively whether data exfiltration occurred
- Cannot confirm eradication of all attacker persistence mechanisms
- Risk of re-infection or dormant backdoors remaining in environment

**Regulatory and Legal Exposure:**
- Inadequate incident documentation may not satisfy regulatory reporting requirements
- Potential GDPR violations if European passenger data was compromised
- Possible SEC disclosure violations if material incident not properly reported
- Failed chain of custody prevents potential criminal prosecution of attacker

**Reputational Damage:**
- Slow and disorganized response was visible to customers and media
- Lack of clear communications created uncertainty and eroded trust
- Industry perception of Collins as unprepared for cybersecurity threats

**Future Risk:**
- Without lessons learned analysis, organization may not improve defenses against next attack
- Attackers may specifically target Collins again knowing response capabilities are weak

**Financial Impact:**
- Estimated $7-9 million in incremental costs due to extended recovery time and incomplete preparation
- Ongoing forensic investigation costs (approximately $150,000/month) due to lack of in-house capability

#### Recommendations

We recommend establishing a comprehensive incident response capability:

**Immediate Actions (0-30 days):**

1. **Rapid IR Plan Update:** Immediately update the incident response plan to address:
   - Ransomware-specific playbook with step-by-step procedures
   - Cloud infrastructure incident response (AWS, Azure)
   - MUSE platform-specific recovery procedures
   - Stakeholder communication templates (airports, airlines, media, regulators)
   - Decision trees for containment options (isolate vs. shut down vs. continue monitoring)

2. **Designated CSIRT Formation:** Formally designate Computer Security Incident Response Team with:
   - Incident Commander role (senior security leader with decision authority)
   - Technical Lead (forensic analysis and containment)
   - Communications Lead (internal and external messaging)
   - Legal/Compliance Lead (regulatory notifications and evidence preservation)
   - Business Liaison (operational impact assessment and recovery priorities)
   - On-call rotation schedule with 24/7 coverage

3. **External Partner Pre-Positioning:**
   - Execute retainer agreements with forensic investigation firms (minimum two vendors for redundancy)
   - Establish relationship with FBI InfraGard and FBI Cyber Division
   - Coordinate with cyber insurance carrier on incident response protocol
   - Pre-approve crisis communications vendor for immediate engagement

**Short-Term Actions (30-90 days):**

4. **Enhanced Detection Capabilities:**
   - Accelerate EDR deployment to 100% of servers and workstations
   - Implement User and Entity Behavior Analytics (UEBA) in SIEM for anomaly detection
   - Deploy Network Detection and Response (NDR) tools for east-west traffic visibility
   - Configure ransomware-specific detection rules (file entropy analysis, backup agent tampering, rapid file modifications)
   - Extend log retention to minimum 12 months for forensic investigations

5. **Forensic Readiness Program:**
   - Deploy full packet capture solution on critical network segments (retain 30 days)
   - Implement automated forensic image collection for critical systems
   - Establish secure evidence storage with proper chain of custody documentation
   - Train IT staff on evidence preservation procedures
   - Document system baselines for deviation analysis

6. **Incident Response Training:**
   - Conduct incident response training for all CSIRT members
   - Provide specialized training in digital forensics, malware analysis, and threat hunting
   - Cross-train help desk staff on initial incident triage and escalation procedures
   - Train executives on crisis decision-making and communications

**Medium-Term Actions (90-180 days):**

7. **Tabletop Exercise Program:**
   - Conduct quarterly tabletop exercises testing different attack scenarios:
     - Q1: Ransomware attack on MUSE platform (based on September 2025 actual incident)
     - Q2: Supply chain compromise through software vendor
     - Q3: Insider threat - privileged account abuse
     - Q4: Cloud infrastructure compromise
   - Document lessons learned and update IR plan after each exercise
   - Invite external stakeholders (legal, insurance, key customers) to participate

8. **Security Orchestration and Automated Response (SOAR):**
   - Implement SOAR platform to automate repetitive incident response tasks:
     - Automated threat intelligence enrichment
     - Automated containment actions (quarantine endpoints, block IPs, disable accounts)
     - Automated evidence collection and preservation
     - Automated stakeholder notifications
   - Develop playbooks for common incident types

9. **Threat Intelligence Integration:**
   - Subscribe to commercial threat intelligence feeds relevant to aerospace and defense sector
   - Join Information Sharing and Analysis Centers (ISACs) for aviation and defense industries
   - Implement Threat Intelligence Platform (TIP) to aggregate and operationalize intelligence
   - Conduct regular threat hunting exercises based on intelligence

10. **Recovery Testing:**
    - Conduct disaster recovery testing for all critical systems quarterly
    - Document and validate RTOs and RPOs for each system
    - Test backup restoration procedures end-to-end
    - Maintain offline (air-gapped) backups for ransomware resilience

11. **Post-Incident Review Process:**
    - Conduct formal lessons learned session within 30 days of every incident
    - Document findings and improvement actions
    - Track remediation of identified gaps
    - Share anonymized lessons learned with industry peers

**Management Response:**

*"Management acknowledges this high-risk finding. The September 2025 incident clearly demonstrated gaps in our incident response preparation. We learned difficult but valuable lessons during an actual crisis that should have been identified through proactive testing.*

*We have already initiated updates to the incident response plan and will complete the update by December 15, 2025. CSIRT formation and external partner pre-positioning will be completed by January 31, 2026.*

*We commit to conducting our first tabletop exercise by February 28, 2026 and establishing quarterly exercises thereafter. Enhanced detection capabilities will be prioritized in our FY2026 security roadmap with completion targeted for April 30, 2026.*

*The CISO will provide quarterly updates to the Board of Directors on incident response capability maturity.*

*Responsible Party: Chief Information Security Officer*  
*Target Completion: April 30, 2026 (full program implementation)"*

---

### FINDING #4: Inadequate Backup and Disaster Recovery Procedures

**Severity:** CRITICAL

#### Condition (What We Observed)

Our review of backup and disaster recovery (DR) procedures revealed critical deficiencies that significantly extended the recovery time from the September 2025 ransomware attack and exposed the organization to potential catastrophic data loss. These deficiencies represent one of the most significant findings from our audit.

Specific observations include:

1. **Incomplete Backup Coverage:** Not all critical systems and data are included in backup procedures:
   - MUSE platform application servers: Only database backups performed; application configuration and customizations not backed up
   - Cloud infrastructure (AWS/Azure): Infrastructure-as-Code templates not backed up; manual configurations not documented
   - Engineering and product development data: Approximately 15% of engineering file shares not included in backup scope
   - Active Directory Group Policy Objects (GPOs): No documented backup procedure for GPOs

2. **Inadequate Backup Testing:** Backup restoration procedures are not regularly tested:
   - Last documented full restoration test: November 2022 (3 years ago)
   - No evidence of application-level recovery testing (database restores without application functionality validation)
   - Partial restoration tests conducted annually for selective systems, but MUSE platform never tested
   - No documented restoration procedures for cloud workloads

3. **Insufficient Air-Gapped/Offline Backups:** Backup infrastructure is not adequately protected against ransomware:
   - All production backups stored on network-attached backup storage accessible from production network
   - No true offline or immutable backups maintained
   - Backup retention on disk only (no tape-based backups for long-term retention)
   - During September 2025 attack, ransomware encrypted backup storage along with production systems, destroying 5 days of backup data

4. **Unclear Recovery Priorities:** Recovery Time Objectives (RTOs) and Recovery Point Objectives (RPOs) are not documented for critical systems:
   - No formal business impact analysis (BIA) to determine criticality tiers
   - Recovery priorities determined ad-hoc during September incident
   - Conflicting stakeholder demands regarding which systems to restore first
   - MUSE platform RTO assumed to be "4 hours" but no documented basis or validation

5. **Inadequate Backup Monitoring:** Backup job failures are not promptly detected and addressed:
   - Review of backup logs revealed:
     - 23% backup failure rate over past 90 days
     - Average time to address backup failure: 11 days
     - 14 systems with backup failures exceeding 30 days
   - No automated alerting for backup failures
   - Manual review of backup logs occurs weekly (should be daily)
   - No dashboard or visibility into backup success rates

6. **Geographic Concentration:** All backup data stored in single data center collocated with production systems:
   - No off-site backup replication
   - Vulnerable to regional disasters (natural disaster, physical attack, facility failure)
   - Does not meet SOX requirements for geographic separation of backups

During the September 2025 recovery, IT operations teams discovered that the most recent usable MUSE platform backup was from 6 days prior to the attack (due to undetected backup failures and destruction of more recent backups by ransomware). This resulted in 6 days of lost transaction data and significantly complicated the recovery process.

#### Standards, Frameworks, Guidelines, and Best Practices

**NIST SP 800-53 Rev. 5:**
- **CP-9 - Information System Backup:** "The organization conducts backups of user-level information, system-level information, and information system documentation including security-related documentation."
- **CP-9(1) - Testing for Reliability/Integrity:** "The organization tests backup information periodically to verify media reliability and information integrity."
- **CP-9(3) - Separate Storage for Critical Information:** "The organization stores backup copies of the operating system and other critical information system software, as well as copies of the information system inventory in a separate facility or in a fire-rated container that is not collocated with the operational system."
- **CP-10 - Information System Recovery and Reconstitution:** "The organization provides for the recovery and reconstitution of the information system to a known state after a disruption, compromise, or failure."

**CMMC 2.0 Requirements:**
- **RE.L2-3.14.1:** Establish and maintain data backups of CUI consistent with recovery time and recovery point objectives.
- **NIST SP 800-172 (Level 3) Control 3.14.1e:** Maintain redundant and physically separate backup systems (required for CMMC Level 3).

**COBIT 2019:**
- **DSS04.07:** Maintain data backups—specifically requiring regular backup procedures, offsite storage, and periodic testing
- **DSS04.08:** Manage continuity plan maintenance and testing
- **DSS04.03:** Develop and implement business continuity response plans

**NIST Cybersecurity Framework:**
- **PR.IP-4:** Backups of information are conducted, maintained, and tested
- **RC.RP-1:** Recovery plan is executed during or after a cybersecurity incident

**ISO/IEC 27001:2022:**
- **Control 5.29 - Information security during disruption:** "The organization shall plan how to maintain information security at an appropriate level during disruption."
- **Control 5.30 - ICT readiness for business continuity:** "ICT readiness shall be planned, implemented, maintained and tested based on business continuity objectives and ICT continuity requirements."

**Industry Best Practice - 3-2-1-1-0 Backup Rule:**
- 3 copies of data (1 primary + 2 backups)
- 2 different media types
- 1 off-site copy
- 1 offline/air-gapped copy
- 0 errors (verified integrity)

This industry standard rule, widely promoted by backup vendors and security researchers, is specifically designed to protect against ransomware attacks.

#### Root Cause

The inadequate backup and DR posture results from:

1. **Underinvestment in Backup Infrastructure:** Backup and DR have historically been viewed as cost centers rather than business enablers. Budget requests for backup infrastructure modernization were deprioritized in favor of new application development and business functionality. The current backup infrastructure was deployed in 2017-2018 and has not been significantly upgraded.

2. **Lack of Disaster Recovery Planning:** Collins Aerospace does not have a comprehensive disaster recovery plan that addresses ransomware scenarios. DR planning has focused on traditional disaster scenarios (hardware failure, natural disaster) rather than cyber incidents. As a result, backup architecture was not designed with ransomware resilience in mind.

3. **Insufficient Backup Operations Resources:** Only 2 backup administrators support the entire enterprise backup infrastructure. These individuals are also responsible for storage administration and cannot dedicate adequate time to backup monitoring, testing, and optimization. High operational workload results in deferred maintenance and testing.

4. **Complexity and Fragmentation:** The post-merger IT environment includes backup systems from multiple legacy organizations using different tools and processes. This fragmentation makes centralized management, monitoring, and testing difficult.

5. **No Formal BIA Process:** The organization has never conducted a formal Business Impact Analysis to determine criticality tiers, RTOs, and RPOs for systems. As a result, backup procedures are not aligned with business recovery requirements.

6. **Limited Executive Understanding:** Senior leadership does not fully understand the relationship between backup/DR capabilities and ransomware resilience. The business case for backup modernization has not been effectively articulated in terms of risk reduction and business continuity.

#### Impact to the Business

Inadequate backup and DR procedures had direct and severe impacts during the September 2025 ransomware attack and create ongoing risk:

**September 2025 Attack Impact:**
- **Extended Recovery Time:** Lack of tested restoration procedures meant IT teams were "learning as they went" during recovery, extending total recovery time to 7 days instead of the assumed 4-hour RTO
- **Data Loss:** 6 days of MUSE transaction data lost due to backup failures and encrypted backup infrastructure—approximately 2.8 million passenger check-in transactions that had to be manually reconstructed where possible
- **Customer Impact:** Airlines unable to access historical passenger data for refunds, rebooking, and customer service
- **Recovery Complexity:** Without application-level backups, MUSE platform had to be rebuilt and reconfigured rather than restored, introducing risk of configuration errors

**Ongoing Risk:**
- **Catastrophic Data Loss Exposure:** If a more severe incident occurs (e.g., insider sabotage, natural disaster), the organization could experience total data loss for critical systems
- **Regulatory Compliance Failures:**
  - SOX: Geographic colocation of backups does not meet best practice for financial data protection
  - CMMC Level 3: Failure to maintain physically separate backups violates NIST SP 800-172 Control 3.14.1e
- **Extended Recovery Windows:** In another incident, recovery times could exceed 2 weeks for complex systems, causing major business disruption and revenue loss
- **Competitive Disadvantage:** Customers evaluating airport system providers now scrutinize DR capabilities—Collins is at competitive disadvantage

**Financial Impact:**
- Estimated cost of September 2025 extended recovery and data reconstruction: $12-15 million
- Potential future incident with total data loss: $50-100 million in business interruption and data recreation costs
- Annual risk exposure from inadequate backup/DR: $8-12 million (considering likelihood and impact)

**Strategic Risk:**
- **Customer Trust Erosion:** Airport customers require robust business continuity given their critical infrastructure role—demonstrated DR failures may result in contract non-renewals
- **Defense Contract Jeopardy:** Inadequate backup procedures for CUI systems could disqualify Collins from DoD contracts requiring CMMC Level 3 certification

#### Recommendations

We recommend implementing enterprise-class backup and disaster recovery capabilities:

**Immediate Actions (0-30 days):**

1. **Emergency Backup Architecture Remediation:**
   - Immediately implement air-gapped backup capability:
     - Deploy secondary backup infrastructure with network-isolated storage
     - Implement backup job workflow: primary backup to online storage, copy to air-gapped storage, disconnect air-gap
     - Minimum 7 days of air-gapped retention for all critical systems
   - Establish off-site backup replication:
     - Replicate critical system backups to geographically separate location (minimum 50 miles from primary data center)
     - Implement for MUSE platform, Active Directory, financial systems, and engineering data within 30 days

2. **Immediate Backup Monitoring Enhancement:**
   - Deploy automated alerting for all backup job failures (alert within 1 hour of failure)
   - Create backup operations dashboard with real-time visibility into:
     - Backup success rates by system
     - Failed backups requiring attention
     - Systems with aging backups (no successful backup in 48+ hours)
     - Backup storage capacity and growth trends
   - Establish daily backup review meeting until success rate exceeds 98%

3. **Critical System Backup Gaps Closure:**
   - Immediately address identified backup gaps:
     - MUSE application configuration and custom code → weekly full backup
     - Active Directory GPOs → daily export and backup
     - Cloud infrastructure-as-code templates → automated Git repository backup
     - Engineering file shares → include all shares in backup scope

**Short-Term Actions (30-90 days):**

4. **Backup Restoration Testing Program:**
   - Develop and document restoration procedures for all critical systems
   - Establish quarterly restoration testing schedule:
     - Each quarter, select 25% of critical systems for full restoration test
     - Rotate through all critical systems annually
     - Document restoration time and issues encountered
     - Update procedures based on lessons learned
   - Conduct full MUSE platform restoration test by February 2026

5. **Business Impact Analysis (BIA):**
   - Conduct formal BIA for all systems and business processes:
     - Categorize systems into criticality tiers (Tier 1-4)
     - Document RTOs and RPOs for each tier based on business impact
     - Identify maximum tolerable downtime (MTD) for each critical process
     - Validate findings with business stakeholders
   - Align backup frequency and retention with documented RPOs
   - Align DR procedures with documented RTOs

6. **Backup Infrastructure Consolidation:**
   - Develop roadmap for consolidating fragmented backup infrastructure
   - Standardize on single enterprise backup platform
   - Eliminate legacy backup solutions from acquired companies
   - Target completion: Q3 2026

**Medium-Term Actions (90-180 days):**

7. **Immutable Backup Implementation:**
   - Deploy object storage with immutability (WORM - Write Once Read Many) for critical backups:
     - Configure minimum retention periods that cannot be modified or deleted
     - Prevent ransomware from destroying backup data even if administrative credentials compromised
   - Implement for Tier 1 and Tier 2 systems by June 2026

8. **Disaster Recovery Plan Development:**
   - Develop comprehensive Disaster Recovery Plan addressing:
     - Ransomware and cyber incident recovery scenarios
     - Hardware/software failure scenarios
     - Natural disaster scenarios
     - Recovery team roles and responsibilities
     - Recovery priorities and sequencing
     - Communication procedures during DR events
     - Vendor escalation procedures
   - Conduct annual DR tabletop exercise
   - Conduct bi-annual DR live test

9. **Backup Encryption:**
   - Implement encryption for all backup data (at rest and in transit)
   - Protect backup encryption keys using HSM (Hardware Security Module) or key management service
   - Ensure backup encryption keys are separate from production system encryption keys

10. **Continuous Data Protection (CDP):**
    - Evaluate and deploy CDP solutions for highest-criticality systems (MUSE, financial reporting)
    - CDP provides near-zero RPO through continuous replication
    - Enables rapid recovery to point-in-time just before ransomware encryption

11. **Backup Operations Staffing:**
    - Add minimum 2 additional backup administrators to support enterprise operations
    - Provide advanced training in modern backup technologies and ransomware recovery
    - Establish 24/7 on-call rotation for backup infrastructure issues

**Management Response:**

*"Management acknowledges this critical finding. The September 2025 ransomware attack exposed significant gaps in our backup and disaster recovery capabilities that resulted in extended recovery time and data loss. This is unacceptable for an organization that provides mission-critical systems to the global aviation industry.*

*We have already initiated emergency procurement of air-gapped backup infrastructure with deployment targeted for December 31, 2025. Off-site backup replication for critical systems will be operational by January 15, 2026.*

*We commit to conducting our first comprehensive backup restoration test for the MUSE platform by February 28, 2026, and establishing quarterly testing thereafter.*

*We will conduct the Business Impact Analysis by March 31, 2026 and develop a comprehensive Disaster Recovery Plan by May 31, 2026.*

*The CFO has approved additional budget allocation for backup infrastructure modernization and staffing in the FY2026 budget cycle. This is now a board-level priority.*

*Responsible Party: Director of IT Infrastructure (with CIO oversight)*  
*Target Completion: May 31, 2026 (full program implementation)"*

---

### FINDING #5: Insufficient Vendor Security Management and Third-Party Risk Oversight

**Severity:** MEDIUM

#### Condition (What We Observed)

Our assessment of third-party vendor security management revealed that Collins Aerospace does not have adequate processes to assess, monitor, and manage security risks introduced by external vendors, suppliers, and service providers. Given that modern supply chain attacks increasingly target trusted vendor relationships, this represents a significant gap in our overall security posture.

Specific observations include:

1. **Lack of Vendor Security Assessment Program:** Collins Aerospace does not conduct formal security assessments before onboarding new vendors or granting system access:
   - No standardized security questionnaire for vendor evaluation
   - No review of vendor SOC 2 reports, ISO 27001 certifications, or other security attestations
   - No technical security testing (vulnerability scans, penetration tests) of vendor-provided systems
   - Procurement contracts do not include security requirements or right-to-audit clauses

2. **Excessive Vendor Access:** Our review of vendor access permissions revealed concerning practices:
   - 47 active vendors have remote access to Collins Aerospace production systems
   - 18 vendors have standing VPN access without time limits or activity monitoring
   - 12 vendors share credentials with multiple technicians (no individual accountability)
   - 7 vendors have domain administrator-level privileges
   - No logging or monitoring of vendor access activities

3. **Inadequate Vendor Offboarding:** When vendor relationships terminate, access is not systematically revoked:
   - Review of terminated vendor contracts identified 8 vendors whose access remained active 3-12 months after contract expiration
   - No automated process to disable vendor access upon contract completion
   - No formal sign-off process confirming vendor access removal

4. **Lack of Ongoing Vendor Monitoring:** After initial vendor onboarding, there is no periodic reassessment of vendor security posture:
   - No tracking of vendor security incidents or breaches
   - No periodic review of vendor access patterns or anomalies
   - No requirements for vendors to notify Collins of their own security incidents
   - No vendor risk scoring or tiering to prioritize oversight activities

5. **Cloud Service Provider (CSP) Security Gaps:** While Collins uses major CSPs (AWS, Azure) that have strong inherent security, our review revealed:
   - No formal review of CSP compliance reports (SOC 2 Type II, FedRAMP, ISO)
   - Shared responsibility model not documented—unclear which security controls are CSP responsibility vs. Collins responsibility
   - No validation that CSPs meet CMMC Level 3 FedRAMP Moderate requirements for CUI data
   - Cloud Security Posture Management (CSPM) tools not deployed to monitor misconfigurations

6. **Software Supply Chain Risks:** Collins does not have processes to manage security risks in the software development supply chain:
   - No Software Bill of Materials (SBOM) maintained for custom applications
   - Third-party software components and open-source libraries not tracked
   - No vulnerability scanning of third-party components
   - No validation of software integrity (code signing, checksums) before deployment

While we did not identify evidence that the September 2025 ransomware attack originated through a vendor, the absence of vendor access monitoring makes it impossible to conclusively rule out vendor compromise as an attack vector. Further, the software used by the attacker (HardBit ransomware) may have contained components from compromised software supply chains.

#### Standards, Frameworks, Guidelines, and Best Practices

**NIST SP 800-53 Rev. 5:**
- **SA-9 - External Information System Services:** "The organization requires that providers of external information system services employ security controls in accordance with organizational requirements."
- **CA-3 - Information Exchange:** "The organization authorizes connections between the information system and external systems based on a documented risk assessment."
- **SA-12 - Supply Chain Protection:** "The organization protects against supply chain threats to the information system, system component, or information system service by employing security safeguards."
- **SR-3 - Supply Chain Controls and Processes:** "The organization employs security safeguards and processes to protect against counterfeit information system components from entering the information system supply chain."

**CMMC 2.0 Requirements:**
- **CA.L2-3.12.2:** Establish and document appropriate protection requirements (including security requirements) for external service providers.
- **SA.L2-3.13.1:** Establish and document security requirements for developers.
- **NIST SP 800-172 (Level 3) Control 3.12.1e:** Define, document, approve, and enforce network connections to external systems (required for CMMC Level 3).

**COBIT 2019:**
- **APO10.01:** Identify and manage supplier relationships and contracts
- **APO10.04:** Manage vendor relationships and contracts—specifically requiring security considerations in vendor evaluation
- **APO10.05:** Manage vendor risk

**NIST Cybersecurity Framework:**
- **ID.SC-1:** Cyber supply chain risk management processes are identified, established, assessed, managed, and agreed to by organizational stakeholders
- **ID.SC-2:** Suppliers and third-party partners of information systems, components, and services are identified, prioritized, and assessed using a cyber supply chain risk assessment process
- **ID.SC-3:** Contracts with suppliers and third-party partners are used to implement appropriate measures designed to meet the objectives of an organization's cybersecurity program

**ISO/IEC 27001:2022:**
- **Control 5.19 - Information security in supplier relationships:** "Processes and procedures shall be defined and implemented to manage the information security risks associated with the use of supplier's products or services."
- **Control 5.20 - Addressing information security within supplier agreements:** "Relevant information security requirements shall be established and agreed with each supplier based on the type of supplier relationship."
- **Control 5.21 - Managing information security in the ICT supply chain:** "Processes and procedures shall be defined and implemented to manage the information security risks associated with the ICT products and services supply chain."

**Industry Best Practice:** The SolarWinds supply chain attack (2020) and Kaseya VSA ransomware attack (2021) demonstrated the critical importance of vendor security management. Organizations must assume that vendors and their systems may be compromised and implement appropriate controls to limit the blast radius of such compromises.

#### Root Cause

The inadequate vendor security management stems from:

1. **Fragmented Vendor Management Responsibilities:** Vendor relationships are managed by different departments (Procurement, IT, Legal, Business Units) without centralized coordination. No single team owns vendor security risk management, resulting in gaps and inconsistencies.

2. **Procurement Process Gaps:** The procurement department focuses on commercial terms, pricing, and contract negotiation. Security requirements are not systematically included in RFPs or contracts. Procurement team lacks security expertise to evaluate vendor security capabilities.

3. **Resource Constraints:** With no dedicated third-party risk management team, vendor security assessments compete with other security priorities and are often deprioritized. The security team of 8 people cannot realistically assess and monitor 100+ active vendors.

4. **Lack of Awareness:** Business units granting vendor access may not understand security risks. Self-service processes allow departments to onboard vendors without security team involvement.

5. **Legacy Vendor Relationships:** Many long-standing vendor relationships predate current security standards. Retrofitting security requirements into existing contracts is difficult and has not been prioritized.

6. **Complex Cloud and SaaS Environment:** Rapid adoption of cloud services and SaaS applications has created "shadow IT" where business units procure and deploy services without central IT approval or security review.

#### Impact to the Business

Inadequate vendor security management creates multiple risk exposures:

**Supply Chain Attack Risk:**
- Compromised vendor could be used as entry point to Collins Aerospace systems (as occurred in Target breach via HVAC vendor)
- Estimated 30% of successful cyberattacks now originate through third-party vectors
- Unmonitored vendor access provides attackers with legitimate credentials and trust relationships

**Data Breach Risk:**
- Vendors with access to sensitive data (customer PII, engineering IP, CUI) represent data leakage risk
- Without contractual protections and monitoring, vendors may inadvertently or intentionally mishandle sensitive data
- Potential GDPR and CMMC violations if vendor mishandling occurs

**Compliance Risk:**
- **CMMC Level 3 Gap:** NIST SP 800-171 requires documented security requirements for external service providers—current state does not meet this requirement
- **SOX Risk:** Third-party service providers supporting financial applications must be adequately controlled—current vendor oversight insufficient for SOX compliance
- **FAR/DFARS Flow-Down:** Defense contracts require flowing down security requirements to subcontractors—Collins cannot demonstrate compliance

**Operational Risk:**
- Vendor security incidents could disrupt Collins Aerospace operations (e.g., if MSP is ransomed, Collins systems they manage may be impacted)
- Lack of vendor offboarding creates unauthorized access and insider threat risk

**Reputational Risk:**
- Breach originating through vendor relationships would damage customer trust
- Industry expects mature vendor risk management from critical infrastructure providers

**Financial Risk:**
- Estimated annual risk exposure from vendor-related security incidents: $3-5 million
- Potential CMMC Level 3 certification delays if vendor controls not addressed: $2.3 billion in defense contracts at risk

#### Recommendations

We recommend implementing a comprehensive third-party risk management (TPRM) program:

**Immediate Actions (0-30 days):**

1. **Emergency Vendor Access Review:**
   - Conduct immediate audit of all vendors with system access
   - Document business justification for each vendor's access
   - Revoke access for terminated vendor relationships immediately
   - Remove standing VPN access—require time-limited access with business justification

2. **Vendor Access Monitoring:**
   - Implement logging and monitoring for all vendor access activities
   - Configure SIEM alerts for:
     - Vendor access from unusual locations or at unusual times
     - Vendor access to systems outside their documented scope
     - Failed vendor authentication attempts
     - Vendor privileged account usage

3. **Interim Vendor Security Questionnaire:**
   - Develop lightweight vendor security questionnaire for immediate use
   - Require completion for all new vendors before granting access
   - Assess: basic security controls, incident history, insurance, compliance certifications

**Short-Term Actions (30-90 days):**

4. **Vendor Risk Tiering:**
   - Classify vendors into risk tiers based on:
     - Type of data accessed (CUI, PII, financial, engineering IP)
     - Level of system access (read-only vs. administrative)
     - Criticality of services provided
     - Vendor security maturity
   - Higher-risk vendors subject to more rigorous assessment and monitoring

5. **Procurement Process Enhancement:**
   - Update procurement templates to include security requirements:
     - Minimum security controls (MFA, encryption, logging, incident response)
     - Right-to-audit clauses
     - Security incident notification requirements (within 24 hours)
     - Data handling and retention requirements
     - Termination and transition requirements
   - Require security team review and approval before vendor contracting (for Tier 1 and Tier 2 vendors)

6. **Cloud Security Posture Management (CSPM):**
   - Deploy CSPM tools to continuously monitor AWS and Azure configurations
   - Implement automated remediation for critical misconfigurations
   - Establish baseline security configurations aligned with CIS Benchmarks
   - Validate CSPs meet FedRAMP Moderate requirements for CUI data

**Medium-Term Actions (90-180 days):**

7. **Comprehensive Vendor Security Assessment:**
   - Conduct thorough security assessments of high-risk vendors:
     - Review SOC 2 Type II reports, ISO 27001 certificates, penetration test results
     - Conduct on-site assessments for highest-risk vendors
     - Request completion of standardized security questionnaires (SIG, VSA, CAIQ)
     - Perform technical security testing of vendor-provided systems where feasible
   - Prioritize assessments based on vendor risk tier
   - Complete assessments for all Tier 1 vendors by April 2026

8. **Third-Party Risk Management Platform:**
   - Implement TPRM platform to centralize vendor risk management:
     - Centralized vendor inventory and risk scoring
     - Automated vendor questionnaire distribution and tracking
     - Integration with procurement and contract systems
     - Continuous monitoring of vendor security posture and incidents
     - Workflow for vendor risk acceptance and remediation tracking
   - Suggested vendors: ServiceNow Third-Party Risk Management, OneTrust, BitSight, SecurityScorecard

9. **Software Composition Analysis (SCA):**
   - Deploy SCA tools to identify third-party components in custom applications
   - Generate and maintain Software Bill of Materials (SBOM) for critical applications
   - Scan for known vulnerabilities in third-party components (leveraging National Vulnerability Database)
   - Establish process for patching vulnerable components
   - Implement automated SCA in CI/CD pipeline for ongoing monitoring

10. **Vendor Offboarding Process:**
    - Develop and document formal vendor offboarding procedure:
      - Notification triggers (contract expiration, termination, scope change)
      - Access revocation checklist (VPN, privileged accounts, application access)
      - Data return/destruction verification
      - Security clearance sign-off
    - Integrate with HR and procurement systems for automated workflow

11. **Ongoing Vendor Monitoring:**
    - Subscribe to vendor breach notification services (e.g., BreachRisk, SecurityScorecard)
    - Monitor news and threat intelligence for vendor security incidents
    - Conduct annual reassessments of vendor security posture
    - Quarterly review of vendor access patterns and anomalies

12. **Training and Awareness:**
    - Train procurement team on vendor security risk assessment
    - Train business unit leaders on approved vendor onboarding process
    - Include third-party risk in annual security awareness training for all employees

**Management Response:**

*"Management acknowledges this medium-risk finding. While we have not identified vendor-related compromise in the September 2025 incident, the lack of vendor security oversight represents an unacceptable gap in our overall security program.*

*We will immediately conduct the emergency vendor access review and implement monitoring by December 31, 2025. Vendor risk tiering and procurement process enhancements will be completed by February 28, 2026.*

*We commit to procuring and implementing a Third-Party Risk Management platform by June 30, 2026, with comprehensive vendor assessments for all Tier 1 vendors completed by that same date.*

*The Chief Procurement Officer and CISO will jointly own this initiative with quarterly progress updates to executive leadership.*

*Responsible Party: Chief Information Security Officer (with CPO collaboration)*  
*Target Completion: June 30, 2026 (full program implementation)"*

---

## SUMMARY OF FINDINGS AND RECOMMENDATIONS

### Findings Summary Table

| Finding # | Title | Severity | CMMC Impact | SOX Impact | Target Remediation |
|-----------|-------|----------|-------------|------------|-------------------|
| 1 | Inadequate Multi-Factor Authentication Implementation | CRITICAL | High - Direct gap in NIST SP 800-171 Control 3.5.3 | Medium - Financial system access controls | April 30, 2026 |
| 2 | Insufficient Privileged Access Reviews and Excessive Permissions | HIGH | High - Violates least privilege requirements | High - SOX segregation of duties concerns | May 31, 2026 |
| 3 | Inadequate Incident Response Capabilities | HIGH | Medium - Gaps in IR.L2-3.6.1 requirements | Low - Limited direct financial impact | April 30, 2026 |
| 4 | Inadequate Backup and Disaster Recovery Procedures | CRITICAL | Critical - Violates SP 800-172 Control 3.14.1e | High - Geographic colocation of financial backups | May 31, 2026 |
| 5 | Insufficient Vendor Security Management | MEDIUM | Medium - External service provider requirements gaps | Low - Limited vendor access to financial systems | June 30, 2026 |

### Overarching Observations

Beyond the specific technical findings documented above, our audit identified several systemic themes that require leadership attention:

1. **Reactive vs. Proactive Security Culture:** Collins Aerospace's information security program has historically been reactive, addressing vulnerabilities after they are exploited rather than proactively identifying and remediating risks. The September 2025 attack was preventable through implementation of industry-standard controls that should have been in place years earlier.

2. **Inadequate Security Resource Allocation:** An 8-person security team is insufficient to support the scale and complexity of Collins Aerospace's IT environment, particularly given our role as a defense contractor and critical infrastructure provider. Security staffing should be benchmarked against industry peers and scaled appropriately.

3. **Governance and Accountability Gaps:** Information security governance is fragmented across multiple teams without clear ownership, escalation paths, or executive accountability. Consider establishing a formal Security Governance Committee with C-suite participation.

4. **Technical Debt and Legacy Systems:** Years of deferred security architecture modernization have created technical debt that must be addressed. The decision to delay MFA implementation on legacy VPN infrastructure exemplifies the risks of accepting technical debt without compensating controls.

5. **CMMC Readiness Concerns:** With our Q2 2026 CMMC Level 3 certification deadline approaching, we have significant work ahead to close identified gaps. Recommend establishing a dedicated CMMC Program Office to coordinate remediation activities across IT, security, legal, and compliance functions.

6. **Board-Level Oversight:** Given the severity of the September 2025 incident and the strategic importance of information security to Collins Aerospace, recommend quarterly Board of Directors cybersecurity briefings with emphasis on key risk indicators, remediation progress, and industry threat landscape.

### Positive Observations

While this audit identified significant findings requiring attention, we also observed several positive security practices:

- Strong network segmentation between corporate and engineering environments, limiting lateral movement
- Effective vulnerability management program for operating system and application patching (94% patch compliance within 30 days)
- Comprehensive security awareness training program with 98% employee completion rate
- Adequate encryption implementation for data at rest and in transit
- Mature identity and access management platform (Active Directory) with appropriate password policies
- Strong physical security controls at data center facilities

These existing strengths provide a solid foundation for addressing the identified findings.

---

## CONCLUSION

Our post-incident IT audit of Collins Aerospace's information security controls revealed significant gaps that directly contributed to the September 2025 ransomware attack and continue to expose the organization to unacceptable risks. The five findings documented in this report represent control deficiencies that could have been prevented through implementation of industry-standard security practices aligned with COBIT, NIST, and CMMC frameworks.

The ransomware attack affecting 170+ airports worldwide was not an unavoidable "sophisticated nation-state attack"—it was enabled by absent or ineffective fundamental security controls, particularly the lack of multi-factor authentication on VPN access and inadequate backup procedures. The HardBit ransomware used in the attack is a commodity RaaS tool available to low-sophistication attackers, not advanced malware.

From a business perspective, the stakes could not be higher. Collins Aerospace faces:
- $2.3 billion in defense contracts dependent on CMMC Level 3 certification by Q2 2026
- Ongoing SOX compliance obligations requiring effective IT general controls
- Customer expectations for enterprise-class security befitting a critical infrastructure provider
- Regulatory scrutiny from ENISA, DoD, and other authorities following the public incident

The path forward requires executive commitment, resource investment, and sustained focus on security program maturity. Management's responses to each finding demonstrate acknowledgment of the issues and commitment to remediation. However, audit follow-up will be critical to ensure committed timelines are met and remediation activities are effective.

We recommend the Audit Committee conduct quarterly reviews of remediation progress beginning December 2025, with particular focus on the two CRITICAL findings (#1 - MFA and #4 - Backup/DR). Additionally, consider engaging external cybersecurity consultants to provide independent validation of control improvements before the CMMC Level 3 assessment by DIBCAC.

The September 2025 incident provided painful but valuable lessons. Collins Aerospace now has an opportunity to emerge as an industry leader in aerospace cybersecurity by taking decisive action to address identified weaknesses. The technology solutions required are well-understood and readily available—what's needed is organizational commitment to prioritize security as a strategic imperative rather than an operational cost center.

---

## APPENDICES

### Appendix A: Audit Team and Methodology Details

**Audit Team Composition:**
- Noble Antwi, Lead IT Auditor - CISA, CISSP
- Krupa Prakash Panchal, Senior IT Auditor - CISA

**Hours Expended:**
- Planning: 78 hours
- Fieldwork and Testing: 312 hours
- Reporting and Review: 95 hours
- Total Engagement Hours: 485 hours

**Systems Tested:**
- MUSE platform (airport check-in/baggage processing)
- Active Directory and authentication infrastructure
- SAP ERP financial reporting systems
- AWS and Azure cloud environments
- Backup and disaster recovery systems
- Security monitoring and incident response systems

**Sample Sizes:**
- User access reviews: 247 accounts tested
- Privileged access: 89 accounts tested
- Backup jobs: 156 systems reviewed
- Vendor access: 47 vendors assessed
- Security configurations: 34 systems examined

### Appendix B: Management Response Summary

All five findings have been acknowledged by management with committed remediation timelines:

**Critical Findings:**
- Finding #1 (MFA): Target completion April 30, 2026
- Finding #4 (Backup/DR): Target completion May 31, 2026

**High Findings:**
- Finding #2 (Privileged Access): Target completion May 31, 2026
- Finding #3 (Incident Response): Target completion April 30, 2026

**Medium Findings:**
- Finding #5 (Vendor Security): Target completion June 30, 2026

The audit team will conduct follow-up reviews quarterly to validate remediation progress and effectiveness.

### Appendix C: References

American Institute of Certified Public Accountants. (2023). *SOC 2 Trust Services Criteria*. AICPA.

Committee of Sponsoring Organizations of the Treadway Commission. (2013). *Internal Control—Integrated Framework*. COSO.

Department of Defense. (2024). *Cybersecurity Maturity Model Certification (CMMC) Program*. DoD CIO.

International Organization for Standardization. (2022). *ISO/IEC 27001:2022 Information security, cybersecurity and privacy protection*. ISO.

ISACA. (2018). *COBIT 2019 Framework: Governance and Management Objectives*. ISACA.

National Institute of Standards and Technology. (2020). *NIST SP 800-53 Rev. 5: Security and Privacy Controls for Information Systems and Organizations*. U.S. Department of Commerce.

National Institute of Standards and Technology. (2020). *NIST SP 800-171 Rev. 2: Protecting Controlled Unclassified Information in Nonfederal Systems and Organizations*. U.S. Department of Commerce.

National Institute of Standards and Technology. (2021). *NIST SP 800-172: Enhanced Security Requirements for Protecting Controlled Unclassified Information*. U.S. Department of Commerce.

National Institute of Standards and Technology. (2018). *NIST Cybersecurity Framework Version 1.1*. U.S. Department of Commerce.

National Institute of Standards and Technology. (2012). *NIST SP 800-30 Rev. 1: Guide for Conducting Risk Assessments*. U.S. Department of Commerce.

National Institute of Standards and Technology. (2012). *NIST SP 800-61 Rev. 2: Computer Security Incident Handling Guide*. U.S. Department of Commerce.

---

**END OF AUDIT FINDINGS REPORT**

---

*This report contains confidential and proprietary information. Distribution is limited to Collins Aerospace management, Board of Directors, Audit Committee, and external auditors as required.*

*Report prepared by: Noble Antwi and Krupa Prakash Panchal*  
*Date: November 28, 2025*
