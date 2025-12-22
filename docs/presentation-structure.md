# COLLINS AEROSPACE IT AUDIT PRESENTATION
## 18-Slide Structure with Talking Points & Graphic Recommendations

**Total Presentation Time: 18-20 minutes (allowing 1+ minute per slide)**

---

## SLIDE 1: TITLE SLIDE

### Content:
- **Main Title:** COLLINS AEROSPACE
- **Subtitle:** IT Audit Findings Report
- **Subtext:** General Computer Controls Audit – Information Security
- **Context:** Post-Incident Assessment | September - November 2025
- **Presenters:** Noble Antwi & Krupa Prakash Panchal
- **Date:** November 28, 2025

### Talking Points (30 seconds):
"Good morning everyone. My name is Noble Antwi, and together with my colleague Krupa Prakash Panchal, we will present the findings from our comprehensive IT audit of Collins Aerospace's information security controls.

This audit was conducted following the September 2025 ransomware attack that disrupted our MUSE platform and affected over 170 airports worldwide. Today we'll share what we found, why it matters for our business, and our roadmap for remediation.

We have about 18 to 20 minutes, so let's begin."

### Graphics Recommendation:
- Professional aerospace-themed background (deep blue)
- Collins Aerospace logo (if permitted)
- Clean, corporate title slide layout

---

## SLIDE 2: AGENDA / ROADMAP

### Content:
**What We'll Cover Today:**
1. Executive Summary & Context
2. The September 2025 Attack
3. Audit Methodology & Scope
4. Five Key Findings (Overview)
5. Critical Finding Deep Dives
6. CMMC Compliance Risk Analysis
7. Remediation Roadmap
8. Investment & ROI
9. Recommendations & Path Forward

### Talking Points (45 seconds):
"Let me quickly outline what we'll cover today.

First, we'll provide executive context on why this audit was needed. Then we'll walk through what happened during the September attack - the timeline and impact.

We'll explain our audit methodology, then present all five findings at a high level before diving deep into the two critical findings.

We'll discuss the CMMC Level 3 compliance risk - this is critical because we have 2.3 billion dollars in defense contracts at stake.

Finally, we'll present our remediation roadmap, the investment required, return on investment, and our recommendations for moving forward.

This is a comprehensive review, so let's get started."

### Graphics Recommendation:
- Simple numbered list or visual roadmap
- Progress bar or timeline showing where we are in the presentation journey
- Icons for each section (optional)

---

## SLIDE 3: EXECUTIVE SUMMARY

### Content:
**Context Box:** Post-incident audit following September 19, 2025 ransomware attack — 170+ airports disrupted, 217 flights cancelled, 7-day recovery

**Two Columns:**

**LEFT - Audit Scope:**
- Assessed information security controls across critical systems
- Evaluated CMMC Level 3 readiness (Q2 2026 deadline)
- Identified **5 significant findings**
- Frameworks: COBIT 2019, NIST SP 800-53, CMMC 2.0, SOX

**Severity Distribution:**
- 2 Critical
- 2 High  
- 1 Medium

**RIGHT - Business Impact:**
- **$2.3B** in defense contracts at risk if CMMC delayed
- September attack: **217 flights cancelled**, 7-day recovery
- Direct incident costs: **$15M+**
- SOX control deficiencies identified
- Customer trust erosion with airline/airport partners

**KEY INSIGHT BOX:** The attack was preventable through implementation of industry-standard controls.

### Talking Points (1 minute 30 seconds):
"Let me summarize our key findings.

We identified 5 significant findings - 2 critical and 2 high severity. These are not minor technical issues; they represent fundamental gaps in our security program that enabled this attack.

The business impact is substantial. We have 2.3 billion dollars in defense contracts that require CMMC Level 3 certification by Q2 2026. If we don't remediate these findings in time, we risk losing these contracts.

The September incident itself cost us over 15 million dollars in direct response costs - forensics, legal, system restoration, regulatory notifications. This doesn't include the reputational damage with our customers - airlines and airports that depend on our MUSE platform.

Here's the most important point: This attack was preventable. We didn't face a sophisticated nation-state actor using zero-day exploits. The HardBit ransomware is commodity malware available to any cybercriminal. Basic controls like multi-factor authentication and air-gapped backups would have prevented this incident entirely.

We conducted this audit using industry-standard frameworks: COBIT 2019 for governance, NIST SP 800-53 for security controls, CMMC 2.0 for defense requirements, and SOX for financial controls."

### Graphics Recommendation:
- **Warning/alert icon** for the context box at top
- **Severity distribution pie chart** or visual breakdown (2 red, 2 orange, 1 yellow)
- **Dollar sign icon** next to $2.3B
- **Simple bar chart** showing attack impact metrics (optional)

---

## SLIDE 4: COMPANY & INCIDENT CONTEXT

### Content:
**Collins Aerospace Profile:**
- Formed 2018 (UTC Aerospace + Rockwell Collins merger)
- **$28.28B** annual revenue (34% of RTX Corporation)
- **80,000** employees globally
- Six business units: Avionics, Interiors, Power & Controls, Mechanical Systems, Mission Systems, Services

**Critical Infrastructure Role:**
- MUSE platform serves **170+ airports** globally
- Automated check-in and baggage handling
- Critical to daily aviation operations

**September 2025 Incident:**
- Date: September 19, 2025, 22:45 GMT
- Attack vector: Compromised VPN credential (no MFA)
- Ransomware: HardBit (Ransomware-as-a-Service)
- Systems affected: 1,000+ systems encrypted
- Recovery time: 7 days (target RTO: 4 hours)

### Talking Points (1 minute):
"Let me provide some context about Collins Aerospace and the incident.

Collins Aerospace was formed in 2018 through the merger of UTC Aerospace and Rockwell Collins. We're a 28 billion dollar company with 80,000 employees globally, making us 34 percent of RTX Corporation's total business.

Our MUSE platform is critical infrastructure. It serves over 170 airports worldwide for automated check-in and baggage handling. When MUSE goes down, airports have to revert to manual operations - which is exactly what happened in September.

On September 19, 2025, at 22:45 GMT - that's late Friday evening - an attacker gained access using a compromised VPN credential that lacked multi-factor authentication. They used HardBit ransomware, which is a Ransomware-as-a-Service variant - essentially malware that anyone can purchase or rent.

The attack encrypted over 1,000 systems. Recovery took 7 days. Our target Recovery Time Objective was 4 hours. That's a massive gap that we need to address."

### Graphics Recommendation:
- **World map** showing Collins Aerospace global presence or MUSE platform reach
- **Timeline graphic** showing the 2018 merger to 2025 attack
- **Icon set** for the six business units
- **Simple infographic** showing MUSE's role in airport operations

---

## SLIDE 5: THE SEPTEMBER 2025 ATTACK - TIMELINE

### Content:
**Top Banner (Red/Alert):**
HardBit Ransomware Attack • September 19, 2025, 22:45 GMT
Initial vector: Compromised VPN credential without MFA → 16-18 hours undetected → Encryption

**LEFT COLUMN - Attack Timeline:**
- **SEP 19 (22:45 GMT)** - Initial Breach: Compromised VPN credential lacking MFA
- **SEP 19-20 (Overnight)** - Lateral Movement: 16-18 hours undetected reconnaissance
- **SEP 20 (Morning)** - Ransomware Deployment: Encryption begins across 1,000+ systems
- **SEP 20 (08:00)** - Discovery: Automated check-in systems fail; alerts triggered
- **SEP 20-21** - Operational Impact: Heathrow, Brussels, Berlin, Dublin manual operations; 217 flights cancelled
- **SEP 24** - Law Enforcement: UK National Crime Agency arrests suspect in West Sussex
- **SEP 25** - Official Disclosure: RTX files SEC Form 8-K confirming ransomware
- **SEP 19-26** - Recovery Period: **7 DAYS TOTAL** (Target RTO: 4 hours)

**RIGHT COLUMN - Impact by Numbers:**
- **170+** Airports Affected
- **217** Flights Cancelled  
- **1,000+** Systems Encrypted
- **6 Days** Data Loss Window
- **2.8M** Passenger Transactions Lost
- **$15M+** Direct Response Costs

### Talking Points (1 minute 45 seconds):
"Let me walk you through exactly what happened during the September attack.

Friday, September 19th, 22:45 GMT - late evening - an attacker used a compromised VPN credential to access our MUSE platform infrastructure. This credential did not have multi-factor authentication enabled. That's Finding number 1.

The ransomware went undetected for 16 to 18 hours. During this time, the attacker was able to move laterally through our network, escalate privileges, and position the ransomware for maximum impact. This detection delay is Finding number 3 - inadequate incident response capabilities.

By Saturday morning, encryption began across more than 1,000 systems. Our automated check-in systems started failing, which is when alerts were finally triggered.

The operational impact was immediate and severe. 170 airports worldwide that depend on our MUSE platform were affected. Major European hubs - London Heathrow, Brussels Airport, Berlin Brandenburg, Dublin Airport - had to revert to manual check-in processes. Between September 20 and 21, 217 flights were cancelled.

On September 24th, the UK National Crime Agency arrested a suspect in West Sussex. The next day, RTX filed an SEC Form 8-K officially disclosing the ransomware attack.

Recovery took 7 full days. Our target RTO was 4 hours. We lost 6 days of backup data because the ransomware encrypted our backup infrastructure along with production systems. That's Finding number 4.

We lost 2.8 million passenger check-in transactions that had to be manually reconstructed. Direct response costs exceeded 15 million dollars."

### Graphics Recommendation:
- **Horizontal timeline** showing the progression from Sep 19-26
- **Icons** for each phase (breach, movement, encryption, recovery)
- **Impact metrics** in colored boxes (red for critical numbers)
- **Map of Europe** highlighting affected airports (optional but powerful visual)

---

## SLIDE 6: AUDIT METHODOLOGY & APPROACH

### Content:
**Audit Timeline:** September - November 2025 (10 weeks accelerated engagement)

**Three Phases:**

**Phase 1: Planning (Weeks 1-2) - 78 hours**
- Review of prior audit reports and IT documentation
- Interviews with IT leadership and MUSE platform team
- Analysis of September incident documentation
- Preliminary risk assessment
- Audit plan development

**Phase 2: Fieldwork (Weeks 3-8) - 312 hours**
- Testing of 67 control objectives across Information Security domain
- Vulnerability assessments and penetration testing
- Policy and procedure reviews
- Access control testing (247 user accounts, 89 privileged accounts analyzed)
- Backup and recovery validation (156 systems reviewed)
- Vendor security assessment (47 third-party vendors)
- Configuration reviews (34 critical systems)

**Phase 3: Reporting (Weeks 9-10) - 95 hours**
- Root cause analysis
- Management validation sessions
- Recommendation development
- Final report preparation

**Frameworks Applied:**
- COBIT 2019 (Governance)
- NIST SP 800-53 Rev. 5 (Security Controls)
- NIST SP 800-171 Rev. 2 (CUI Protection / CMMC Level 2)
- NIST SP 800-172 (Enhanced Security / CMMC Level 3)
- CMMC 2.0 (Defense Contractor Requirements)
- NIST Cybersecurity Framework (Risk Management)
- SOX Section 404 (IT General Controls)

### Talking Points (1 minute 30 seconds):
"Let me explain how we conducted this audit.

This was a 10-week accelerated engagement from September through November 2025. We divided the work into three phases.

Phase 1 was planning. We spent 2 weeks reviewing prior audit reports, interviewing IT leadership, and analyzing the incident documentation. We wanted to understand what happened before we started testing controls.

Phase 2 was fieldwork - the bulk of our work. Over 6 weeks, we tested 67 control objectives across the Information Security domain. We conducted vulnerability assessments, reviewed policies and procedures, and performed detailed testing.

Let me give you some numbers to show the depth of this audit: We analyzed 247 user accounts and 89 privileged accounts for access control testing. We reviewed backup jobs across 156 systems. We assessed the security posture of 47 third-party vendors. We conducted configuration reviews on 34 critical systems.

This wasn't a superficial review - we went deep.

Phase 3 was reporting. We conducted root cause analysis for each finding, validated our findings with management, and developed prioritized recommendations.

We applied seven major frameworks to ensure our findings met industry standards and regulatory requirements. Most importantly for our defense business, we evaluated every finding against CMMC Level 3 requirements - that's NIST SP 800-171 plus the 24 enhanced controls from NIST SP 800-172."

### Graphics Recommendation:
- **Gantt chart** showing the 10-week timeline with three phases
- **Circular/hexagonal diagram** showing the frameworks applied
- **Numbers in large bold text** (67 controls, 247 accounts, 156 systems, 47 vendors, 34 systems)
- **Icons** for each phase (planning = clipboard, fieldwork = magnifying glass, reporting = document)

---

## SLIDE 7: FINDINGS OVERVIEW - ALL 5 FINDINGS

### Content:
**5 Finding Cards (color-coded by severity):**

**Finding #1 - CRITICAL [Red border]**
- **Title:** Inadequate Multi-Factor Authentication (MFA) Implementation
- **Description:** 60.5% of VPN accounts lack MFA; 35.3% of privileged accounts bypass MFA; 23 service accounts lack certificate-based authentication and automated rotation
- **Direct Impact:** Direct attack vector for September breach
- **Target Date:** April 30, 2026
- **Compliance Impact:** CMMC / SOX

**Finding #2 - HIGH [Orange border]**
- **Title:** Insufficient Privileged Access Reviews & Excessive Permissions
- **Description:** No reviews in 30 months; 12 orphaned accounts from terminated employees; segregation of duties violations
- **Direct Impact:** Expanded attack surface; insider threat risk
- **Target Date:** May 31, 2026
- **Compliance Impact:** CMMC / SOX

**Finding #3 - HIGH [Orange border]**
- **Title:** Inadequate Incident Response Capabilities & Documentation
- **Description:** IR plan not updated since 2021; no formal CSIRT; 16-18 hour detection delay; incomplete forensic evidence
- **Direct Impact:** Extended attacker dwell time; incomplete root cause analysis
- **Target Date:** April 30, 2026
- **Compliance Impact:** CMMC

**Finding #4 - CRITICAL [Red border]**
- **Title:** Inadequate Backup and Disaster Recovery Procedures
- **Description:** No air-gapped backups; 23% failure rate; 6 days data loss; last restoration test Nov 2022
- **Direct Impact:** 7-day recovery vs 4-hour RTO; catastrophic data loss risk
- **Target Date:** May 31, 2026
- **Compliance Impact:** CMMC / SOX

**Finding #5 - MEDIUM [Yellow border]**
- **Title:** Insufficient Vendor Security Management & Third-Party Risk
- **Description:** No vendor assessments; 47 vendors with production access; 8 terminated vendors still have access
- **Direct Impact:** Supply chain attack risk; data breach exposure
- **Target Date:** June 30, 2026
- **Compliance Impact:** CMMC

**Bottom Summary Bar:**
Common Thread: All findings represent preventable gaps in industry-standard controls

### Talking Points (2 minutes):
"Here are all five findings from our audit. Let me walk through each one.

Finding number 1 - CRITICAL - Inadequate MFA Implementation. This was the direct attack vector. 60 percent of our VPN accounts lack multi-factor authentication. 35 percent of privileged accounts can bypass MFA. We also found 23 service accounts using static passwords without proper security controls like certificate-based authentication or automated rotation. This is a basic security control that should have been in place years ago.

Finding number 2 - HIGH - Insufficient Privileged Access Reviews. We haven't reviewed privileged accounts in 30 months - that's two and a half years. We found 12 accounts from terminated employees still active with administrative rights. Some have been gone for over two years, but their accounts are still enabled. We also found segregation of duties violations where developers have production database administrator access.

Finding number 3 - HIGH - Inadequate Incident Response. Our incident response plan was last updated in 2021 - four years ago. We have no formal Computer Security Incident Response Team with 24/7 coverage. Detection took 16 to 18 hours because we don't have adequate monitoring. Our forensic evidence preservation was incomplete because responders powered off systems without capturing memory, destroying critical evidence.

Finding number 4 - CRITICAL - Inadequate Backup and Disaster Recovery. We have no air-gapped backups. All our backup infrastructure was on the network, so the ransomware encrypted our backups along with production. We have a 23 percent backup failure rate - almost 1 in 4 jobs fail. We lost 6 days of data. The last time we tested a full restoration was November 2022 - three years ago.

Finding number 5 - MEDIUM - Insufficient Vendor Security Management. We have 47 vendors with production system access, and we don't conduct security assessments on any of them. We found 8 vendors whose contracts were terminated months ago, but they still have active VPN access to our systems.

All five findings have committed remediation timelines between April and June 2026.

The common thread here: These are all preventable gaps in industry-standard controls."

### Graphics Recommendation:
- **5 horizontal cards** stacked vertically, color-coded (red, orange, orange, red, yellow)
- **Severity badges** (CRITICAL, HIGH, MEDIUM) prominently displayed
- **Icons** for each finding type (shield for MFA, key for access, alarm for IR, database for backup, network for vendor)
- **Timeline bar** at bottom showing April-June 2026 targets

---

## SLIDE 8: FINDING #1 DEEP DIVE - MFA DEFICIENCY

### Content:
**Header:** FINDING #1 - CRITICAL: Inadequate MFA Implementation

**LEFT COLUMN - What We Found:**

**⚠ DIRECT ATTACK VECTOR**
September 2025 attack began with compromised VPN credential lacking MFA protection

**Specific Gaps Identified:**
- **60.5%** of VPN accounts (89 of 147) lack MFA
- **35.3%** of privileged accounts (12 of 34) bypass MFA requirement
- **23 service accounts** with static passwords lacking certificate-based authentication and automated rotation (18+ months without rotation)
- Several service accounts enabled for interactive login (security risk)
- Emergency access procedures lack MFA verification
- No centralized Privileged Access Management (PAM) solution

**Root Cause:**
Legacy VPN infrastructure from pre-merger era scheduled for Q4 2025 replacement. Management deferred MFA implementation to avoid "throwaway work" on infrastructure being replaced. Decision made without formal risk assessment or compensating controls implementation.

**RIGHT COLUMN - Business Impact & Standards:**

**Business Impact:**
- **OPERATIONAL:** 170+ airports disrupted, 217 flights cancelled, 7-day recovery
- **FINANCIAL:** $15M+ incident response costs; potential insurance premium increases
- **COMPLIANCE:** CMMC Level 3 gap (NIST 800-171 Control 3.5.3); SOX ITGC deficiency
- **STRATEGIC:** $2.3B defense contracts at risk if CMMC certification delayed past Q2 2026
- **REPUTATIONAL:** Customer trust erosion with airline and airport partners

**Standards Violated:**
- NIST SP 800-53: IA-2(1), IA-2(2) - MFA for privileged and network access
- CMMC 2.0: AC.L2-3.1.12 - MFA requirement for privileged users
- NIST SP 800-171: Control 3.5.3 - MFA for network and privileged access
- COBIT 2019: DSS05.04, APO13.01 - Identity and access management
- NIST CSF: PR.AC-1, PR.AC-7 - Identity management and authentication

**RECOMMENDATIONS BAR:**
Emergency MFA deployment (Dec 2025) | PAM solution (Apr 2026) | Zero Trust architecture roadmap | Conditional access policies | Certificate-based auth for service accounts

### Talking Points (2 minutes):
"Let's dive deep into Finding number 1, our most critical finding.

The numbers are stark. 60 percent of VPN accounts and 35 percent of privileged accounts lack multi-factor authentication.

Let me explain the service account issue because this is important. We found 23 service accounts with static passwords that haven't been rotated in over 18 months. Now, MFA doesn't typically apply to service accounts because they're for automated, non-interactive processes - things like database connections or scheduled jobs. But we should have compensating controls: certificate-based authentication or automated credential rotation. We have neither. Worse, some of these service accounts were enabled for interactive login, which means they could potentially be used like regular user accounts. That's a major security risk.

What's the root cause? Management made a business decision to defer MFA implementation. Our legacy VPN infrastructure was from the pre-merger era and was scheduled for replacement in Q4 2025 - just three months after the attack. Management didn't want to invest in what they called 'throwaway work' on infrastructure being replaced soon.

Here's the problem: This decision was made without a formal risk assessment. No one calculated the actual risk of deferring MFA versus the cost of implementation. No compensating controls were put in place.

The business impact was severe. This gap directly enabled the September attack. A compromised VPN credential without MFA protection was the entry point for ransomware that cost us over 15 million dollars and disrupted 170 airports.

This also puts us out of compliance with CMMC Level 3 requirements. Specifically, NIST SP 800-171 Control 3.5.3 explicitly requires multi-factor authentication for privileged and network access. This is not optional for defense contractors. If we can't demonstrate compliance by Q2 2026, we risk losing 2.3 billion dollars in defense contracts.

Our recommendations: Emergency MFA deployment by December 2025 for all VPN and privileged accounts. Full Privileged Access Management solution by April 2026 to handle both MFA for users and certificate-based authentication for service accounts. Begin developing a Zero Trust architecture roadmap for long-term security posture improvement."

### Graphics Recommendation:
- **Large percentage circles** or gauge charts showing 60.5% and 35.3% gaps (visual impact)
- **Red alert box** for "Direct Attack Vector"
- **Icon showing attack path:** VPN → Compromised Credential → Network Access → Ransomware
- **Impact boxes** color-coded by category (operational, financial, compliance, strategic)
- **Standards violation checklist** with red X marks

---

## SLIDE 9: FINDING #4 DEEP DIVE - BACKUP/DR DEFICIENCY

### Content:
**Header:** FINDING #4 - CRITICAL: Inadequate Backup & Disaster Recovery Procedures

**LEFT COLUMN - What We Found:**

**⚠ EXTENDED RECOVERY**
7-day recovery instead of 4-hour RTO. Ransomware encrypted backup infrastructure, destroying 5 days of backup data.

**Specific Gaps Identified:**
- **No air-gapped backups** - all backup storage network-accessible
- **23% backup failure rate** over 90 days (undetected avg 11 days)
- **6 days of data loss** - most recent usable MUSE backup predated attack
- **2.8M passenger transactions** lost requiring manual reconstruction
- Last full restoration test: **November 2022** (3 years ago)
- No off-site replication (single data center concentration risk)
- No geographic separation of backup infrastructure
- RTOs/RPOs not formally documented for critical systems
- Incomplete backup coverage (MUSE app configs, 15% engineering data, AD GPOs not backed up)
- No Business Impact Analysis conducted

**Root Cause:**
Backup infrastructure deployed 2017-2018 with no major upgrades despite significant business growth. Backup modernization budget requests rejected in FY2023 and FY2024 citing "adequate existing capabilities." Only 2 backup administrators for enterprise-scale environment (insufficient staffing). Post-merger infrastructure fragmentation never addressed. Management lacked understanding of ransomware impact on backups.

**RIGHT COLUMN - 3-2-1-1-0 Rule & Impact:**

**Industry Best Practice: 3-2-1-1-0 Backup Rule**

**3** - Copies of data (1 primary + 2 backups)
**2** - Different media types (disk, tape, cloud)
**1** - Off-site copy (geographic separation)
**1** - Offline/air-gapped copy (ransomware-proof)
**0** - Errors (verified integrity)

**Current Status: Collins Aerospace meets ZERO of these requirements**

**Business Impact:**
- **OPERATIONAL:** 7-day recovery vs 4-hour RTO; 2.8M transactions lost
- **FINANCIAL:** $12-15M extended recovery and data reconstruction costs
- **COMPLIANCE:** CMMC Level 3 violation (NIST SP 800-172 Control 3.14.1e requires physically separate backup systems); SOX deficiency (geographic colocation)
- **STRATEGIC:** Catastrophic data loss risk in future incident ($50-100M exposure)
- **REGULATORY:** GDPR data protection inadequacy

**Standards Violated:**
- NIST SP 800-53: CP-9, CP-9(1), CP-9(3), CP-10
- CMMC 2.0: RE.L2-3.14.1; NIST SP 800-172 Control 3.14.1e (Level 3 specific)
- COBIT 2019: DSS04.07, DSS04.08
- ISO 27001: Controls 5.29, 5.30

**RECOMMENDATIONS BAR:**
Air-gapped backup (Dec 2025) | Off-site replication (Jan 2026) | Quarterly restoration testing | Immutable backups | Business Impact Analysis | Backup infrastructure consolidation | Continuous Data Protection for critical systems

### Talking Points (2 minutes 15 seconds):
"Finding number 4 is equally critical and explains why recovery took 7 days instead of our 4-hour target.

We have no air-gapped backups. Let me explain what that means. All our backup infrastructure was accessible from the production network. So when the ransomware encrypted production systems, it could also reach and encrypt our backup storage. We lost 5 days of backup data.

The industry best practice for ransomware protection is the 3-2-1-1-0 rule, shown on the right. Let me walk through this: 3 copies of data - your primary production copy plus 2 backups. 2 different media types - for example, disk and tape, or disk and cloud. 1 off-site copy for geographic separation - if your data center burns down, you have a copy elsewhere. 1 offline or air-gapped copy that ransomware cannot reach even if an attacker has full administrative access to your network. And 0 errors - meaning verified backup integrity.

We currently meet zero of these five requirements.

We also discovered a 23 percent backup failure rate. That means almost 1 in 4 backup jobs fail. These failures went undetected for an average of 11 days. We only discovered them during our audit when we reviewed backup logs.

The last time we tested a full backup restoration was November 2022 - three years ago. We have never tested MUSE platform restoration end-to-end. We assumed our backups worked. The September attack proved they didn't.

The impact was severe. We lost 2.8 million passenger check-in transactions - boarding passes, seat assignments, baggage tags - all had to be manually reconstructed. Extended recovery costs were 12 to 15 million dollars. We operated in degraded mode for a full week.

What's the root cause? Our backup infrastructure was deployed in 2017 and 2018 - before the merger - and has never been significantly upgraded despite massive business growth. In FY2023 and FY2024, budget requests for backup modernization were rejected with management citing 'adequate existing capabilities.' We have only 2 backup administrators for an enterprise-scale environment. That's severely understaffed.

This also violates CMMC Level 3 requirements. NIST SP 800-172 Control 3.14.1e - which is Level 3 specific - explicitly requires physically separate backup systems to protect against ransomware. This is not negotiable for defense contractors.

Our recommendations: Air-gapped backup infrastructure by December 2025. Off-site replication to a second geographic location by January 2026. Quarterly backup restoration testing - no more assumptions. Implement immutable backups that cannot be deleted or encrypted even with administrative credentials. Conduct a formal Business Impact Analysis to properly understand recovery requirements for every critical system."

### Graphics Recommendation:
- **3-2-1-1-0 visual diagram** - this is crucial, make it prominent and clear
- **Before/After comparison:** Current state vs. Industry standard
- **Timeline showing:** Last backup test (Nov 2022) → Attack (Sep 2025) → 3-year gap highlighted
- **Data loss visualization:** 6-day gap showing lost transactions
- **Recovery timeline:** 4-hour target vs. 7-day actual (visual gap)
- **Red "0 of 5" badge** showing we meet none of the requirements

---

## SLIDE 10: FINDINGS #2 & #3 - HIGH SEVERITY

### Content:
**Two-column layout for HIGH findings:**

**LEFT COLUMN - Finding #2: Privileged Access**

**FINDING #2 - HIGH: Insufficient Privileged Access Reviews**

**What We Found:**
- No privileged access reviews since **March 2023** (30 months)
- **47 permanent domain administrators** (excessive)
- **34 standing AWS administrators** (should use just-in-time)
- **12 orphaned accounts** from terminated employees (8-26 months post-termination)
- **18 stale service accounts** with unclear ownership
- **9 shared administrative accounts** (untraceable activity)
- **5 segregation of duties violations** (developers with production DB admin)

**Root Cause:**
- No formal Privileged Access Management policy
- Organizational silos preventing cross-functional reviews
- Cultural acceptance of over-permissioning
- No PAM technology platform
- Insufficient HR-IT integration for termination workflows
- Understaffed security team (8 people)

**Business Impact:**
- Expanded attack surface; insider threat exposure
- Lateral movement facilitation
- CMMC Level 3 gap; SOX material weakness risk
- $5-8M annual risk exposure

**Standards Violated:**
- NIST SP 800-53: AC-2, AC-6
- CMMC 2.0: AC.L2-3.1.5
- NIST SP 800-172: Control 3.1.1e
- COBIT 2019: DSS05.04
- SOX Section 404

**RIGHT COLUMN - Finding #3: Incident Response**

**FINDING #3 - HIGH: Inadequate Incident Response Capabilities**

**What We Found:**
- IR plan last updated **August 2021** (4+ years old)
- No formal CSIRT with 24/7 coverage
- EDR on only **64% servers / 71% workstations**
- **16-18 hour detection delay** in September attack
- No forensic evidence preservation protocol (systems powered off without memory capture)
- No tabletop exercises ever conducted
- No pre-established law enforcement relationships
- No forensic vendor retainers
- Incident documentation incomplete

**Root Cause:**
- Lack of executive prioritization
- Resource constraints (8-person security team)
- Rapid M&A growth outpacing security capabilities
- Cultural complacency ("didn't think it would happen")
- No cyber insurance engagement

**Business Impact:**
- Extended detection time allowed ransomware spread
- 5-7 day recovery vs. 4-hour RTO
- Incomplete root cause analysis
- Regulatory exposure (GDPR, SEC)
- $7-9M incremental costs
- Ongoing forensic investigation $150K/month

**Standards Violated:**
- NIST SP 800-53: IR-1, IR-4, IR-5, IR-8
- NIST SP 800-61 Rev. 2
- CMMC 2.0: IR.L2-3.6.1, IR.L2-3.6.2
- COBIT 2019: DSS02.01, DSS02.02
- NIST CSF: DE.CM-1, RS.RP-1

### Talking Points (2 minutes):
"Let me briefly cover our two HIGH severity findings.

Finding number 2 is Insufficient Privileged Access Reviews. We haven't reviewed privileged accounts in 30 months - two and a half years. Think about what can change in that time. People get promoted, change roles, leave the company. Accounts accumulate permissions but never lose them.

We found 47 permanent domain administrators. In a well-managed environment, you might have 5 to 10. We have 47 people with the keys to the kingdom. We found 12 orphaned accounts from terminated employees - some have been gone for over two years, but their accounts are still active with full administrative rights.

We found 5 segregation of duties violations where developers have production database administrator access. That's a SOX violation. A developer should not be able to modify production financial data without oversight.

The root cause is cultural and organizational. We have no formal Privileged Access Management policy. We have organizational silos that prevent cross-functional reviews. There's cultural acceptance of over-permissioning - when someone asks for admin rights, we just give it to them without questioning if they really need it.

Finding number 3 is Inadequate Incident Response Capabilities. Our incident response plan was last updated in August 2021 - over four years ago. We have no formal Computer Security Incident Response Team. During the September attack, people didn't know who was in charge or what their roles were.

We have endpoint detection and response tools deployed on only 64 percent of servers and 71 percent of workstations. That means roughly a third of our infrastructure has no advanced threat detection.

Detection took 16 to 18 hours. The ransomware was in our network Friday night. We didn't detect it until late Saturday morning when systems started failing.

When responders arrived, they powered off systems without capturing memory. All the evidence of what the attacker was doing in RAM was lost. We can't do complete forensic analysis because we don't have that evidence.

The root cause here is executive prioritization. Security has been seen as a cost center, not a risk management function. Our security team is 8 people. For an enterprise our size, we should have 20 to 25 people minimum."

### Graphics Recommendation:
- **Split screen design** - two columns clearly separated
- **Finding #2:** Icon showing multiple user accounts with admin badges, visual showing 12 orphaned accounts
- **Finding #3:** Timeline showing 16-18 hour gap from breach to detection
- **Coverage gap visual** for EDR (64% and 71% pie charts showing the gaps)
- **Years since update badge:** "4+ years old" in red

---

## SLIDE 11: FINDING #5 - VENDOR SECURITY RISK

### Content:
**Header:** FINDING #5 - MEDIUM: Insufficient Vendor Security Management

**What We Found:**

**Vendor Access Gaps:**
- **47 vendors** with production system access
- **18 vendors** with standing VPN access (should be just-in-time)
- **12 vendors** sharing credentials (no individual accountability)
- **7 vendors** with domain administrator privileges (excessive)
- **8 terminated vendor contracts** with active access (3-12 months post-termination)
- No ongoing vendor security monitoring or compliance validation
- No Cloud Service Provider (CSP) compliance reviews for AWS/Azure environments
- No Software Bill of Materials (SBOM) for third-party applications

**Process Gaps:**
- No formal vendor security assessment program
- Fragmented vendor management across departments (IT, Procurement, Business Units)
- Procurement focuses on commercial terms, not security requirements
- No dedicated Third-Party Risk Management (TPRM) team
- No vendor access request/approval workflow
- No regular vendor access recertification
- Vendor offboarding process non-existent

**Root Cause:**
- Legacy vendor relationships predate current security standards
- Shadow IT from rapid cloud/SaaS adoption
- Lack of business unit awareness of security requirements
- No centralized vendor risk visibility

**Business Impact:**
- **SUPPLY CHAIN RISK:** 30% of breaches occur via third parties (industry data)
- **DATA BREACH EXPOSURE:** Vendors handle customer PII and financial data
- **COMPLIANCE GAP:** CMMC Level 3 requires vendor security controls; SOX gap for service providers
- **OPERATIONAL DISRUPTION RISK:** Dependency on vendors without security validation
- **REGULATORY RISK:** FAR/DFARS flow-down requirements not enforced
- **ANNUAL RISK EXPOSURE:** $3-5M

**Standards Violated:**
- NIST SP 800-53: SA-9, CA-3, SA-12, SR-3
- CMMC 2.0: CA.L2-3.12.2, SA.L2-3.13.1
- NIST SP 800-172: Control 3.12.1e
- COBIT 2019: APO10.01, APO10.04, APO10.05
- NIST CSF: ID.SC-1, ID.SC-2, ID.SC-3
- ISO 27001: Controls 5.19, 5.20, 5.21

**Recommendations:**
- Emergency vendor access review and termination (Dec 2025)
- Vendor risk tiering framework (Feb 2026)
- TPRM platform deployment (Jun 2026)
- Cloud Security Posture Management (CSPM) for AWS/Azure
- Software Composition Analysis for SBOM
- Quarterly vendor security assessments

### Talking Points (1 minute 30 seconds):
"Finding number 5 is rated MEDIUM severity, but don't let that fool you - vendor and supply chain risk is one of the fastest growing threat vectors in cybersecurity.

We have 47 vendors with production system access, and we don't conduct security assessments on any of them. We're trusting them implicitly without validation.

Eighteen vendors have standing VPN access - always-on connections to our network. Seven vendors have domain administrator privileges. That means a security breach at a vendor could give attackers direct administrative access to our systems.

We found 8 vendors whose contracts were terminated months ago - some as long as a year ago - but they still have active credentials and VPN access to our systems. Nobody told IT to revoke their access.

Industry data shows that 30 percent of data breaches start with a compromised vendor or third party. We saw this with Target's 2013 breach that started with an HVAC vendor. We saw it with SolarWinds. Supply chain attacks are increasingly common.

This is also a CMMC Level 3 gap. Defense contractors must enforce security requirements on their vendors and subcontractors. It's called flow-down requirements from FAR and DFARS. We're not doing this.

The root cause is fragmented vendor management. IT manages some vendors, Procurement manages others, business units have their own relationships. Nobody has enterprise-wide visibility.

Our recommendations: Immediate vendor access review and termination of unnecessary access. Implement a vendor risk tiering framework - not all vendors require the same level of scrutiny. High-risk vendors with production access need annual security assessments. Low-risk vendors with limited access need basic security questionnaires.

Deploy a Third-Party Risk Management platform by June 2026 to centralize vendor oversight."

### Graphics Recommendation:
- **Network diagram** showing 47 vendors with access to core systems
- **Funnel or pyramid showing risk tiers:** High risk (need full assessments) → Medium → Low
- **Terminated vendor visual:** 8 vendors with "TERMINATED" stamps still showing active connection
- **Pie chart:** 30% of breaches via third parties (industry statistic)
- **Vendor access types:** Standing VPN vs. Just-in-Time access comparison

---

## SLIDE 12: CMMC LEVEL 3 COMPLIANCE RISK

### Content:
**Top Banner (Red Alert):**
CERTIFICATION DEADLINE: Q2 2026 | Government-led DIBCAC assessment required | **$2.3B in defense contracts at risk**

**LEFT COLUMN - CMMC Level 3 Requirements:**

**Level 2 Foundation (110 controls):**
- Complete NIST SP 800-171 implementation (all 17 families, 110 requirements)
- Perfect score from C3PAO (Certified Third-Party Assessment Organization) required first
- No Plan of Action & Milestones (POA&M) items allowed before advancing to Level 3
- Documentation of all security controls
- Evidence of implementation and effectiveness

**Level 3 Enhanced Controls (24 additional controls):**
- NIST SP 800-172 advanced security requirements
- Protection against Advanced Persistent Threats (APTs)
- Enhanced access control, audit, network security, incident response
- Government-led assessment by DIBCAC (Defense Industrial Base Cybersecurity Assessment Center)
- Triennial assessment cycle (every 3 years)
- No third-party assessor - direct government evaluation

**Assessment Process:**
1. Achieve Level 2 certification (C3PAO assessment)
2. Remediate all gaps (no POA&M allowed)
3. Request Level 3 assessment from DIBCAC
4. Government conducts on-site assessment
5. Certification valid for 3 years
6. No extensions granted

**RIGHT COLUMN - CMMC Gaps by Finding:**

**Finding #1: MFA Deficiency [CRITICAL]**
- Violates: NIST SP 800-171 Control 3.5.3 (Level 2)
- Requirement: MFA for all privileged and network access
- Gap: 60.5% VPN accounts, 35.3% privileged accounts lack MFA
- Impact: **Cannot pass Level 2 assessment**

**Finding #2: Privileged Access [HIGH]**
- Violates: NIST SP 800-171 Control 3.1.5 | SP 800-172 Control 3.1.1e (Level 3)
- Requirement: Least privilege and periodic review of security-relevant groups
- Gap: No reviews in 30 months; excessive standing permissions
- Impact: **Level 2 and Level 3 gap**

**Finding #3: Incident Response [HIGH]**
- Violates: CMMC IR.L2-3.6.1, IR.L2-3.6.2 (Level 2)
- Requirement: Operational incident handling capability; incident tracking
- Gap: Outdated IR plan (2021); no formal CSIRT; inadequate detection
- Impact: **Cannot demonstrate operational capability**

**Finding #4: Backup/DR [CRITICAL]**
- Violates: RE.L2-3.14.1 (Level 2) | **NIST SP 800-172 Control 3.14.1e (Level 3 SPECIFIC)**
- Requirement: Regularly perform and test data backups | **Physically separate backup systems**
- Gap: No air-gapped or off-site backups; no testing
- Impact: **Direct Level 3 violation - physically separate systems required**

**Finding #5: Vendor Security [MEDIUM]**
- Violates: CA.L2-3.12.2, SA.L2-3.13.1 (Level 2) | SP 800-172 Control 3.12.1e (Level 3)
- Requirement: Document security requirements for external providers
- Gap: No vendor security assessments; inadequate monitoring
- Impact: **Supply chain security gap**

**Bottom Box:**
**CURRENT READINESS:** 4 of 5 findings directly violate CMMC Level 3 requirements. Without immediate remediation, we will NOT achieve certification by Q2 2026 deadline.

### Talking Points (2 minutes):
"This slide is about our CMMC Level 3 compliance risk, and this is absolutely critical for our defense business.

CMMC - Cybersecurity Maturity Model Certification - Level 3 certification is required for defense contractors handling sensitive controlled unclassified information that requires protection against Advanced Persistent Threats. Our deadline is the second quarter of 2026. If we miss this deadline, we put 2.3 billion dollars in defense contracts at risk.

Let me explain the requirements because they're rigorous.

First, we must achieve perfect Level 2 certification. That means implementing all 110 requirements from NIST SP 800-171 across 17 control families. A Certified Third-Party Assessment Organization - called a C3PAO - conducts the Level 2 assessment. We must get a perfect score. No open Plan of Action and Milestones allowed. Every control must be fully implemented and demonstrated as effective.

Then we advance to Level 3, which adds 24 enhanced security controls from NIST SP 800-172. These are specifically designed to protect against nation-state actors and Advanced Persistent Threats.

Here's the critical difference: Level 3 assessments are conducted by the government itself - specifically DIBCAC, the Defense Industrial Base Cybersecurity Assessment Center. It's not a third-party assessor anymore. It's direct government evaluation. And they don't grant extensions.

Our audit found that 4 of our 5 findings directly violate CMMC requirements.

Finding number 1 - MFA - violates NIST SP 800-171 Control 3.5.3. This is a Level 2 requirement. We cannot pass Level 2 assessment with 60 percent of our VPN accounts lacking MFA. This is blocking us at the foundation level.

Finding number 2 - Privileged Access - violates both Level 2 and Level 3 requirements. NIST SP 800-172 Control 3.1.1e specifically requires periodic reviews of security-relevant groups. We haven't done this in 30 months.

Finding number 3 - Incident Response - violates Level 2 requirements for operational incident handling capability. We must demonstrate a functioning CSIRT with documented processes and tested procedures.

Finding number 4 - Backup and DR - this is the big one. This violates NIST SP 800-172 Control 3.14.1e, which is Level 3 specific. It explicitly requires physically separate backup systems to protect against ransomware. The September attack proved we don't have this. This is a direct Level 3 violation.

Finding number 5 - Vendor Security - violates supply chain security requirements at both Level 2 and Level 3.

Without immediate remediation, we will not achieve certification by Q2 2026."

### Graphics Recommendation:
- **Pyramid or staircase diagram:** Level 1 (Foundation) → Level 2 (110 controls) → Level 3 (24 enhanced controls)
- **Traffic light indicators:** Red X for gaps, Green check for compliance
- **Finding-to-CMMC mapping table:** Clear visual showing which findings block which level
- **Clock or countdown:** Q2 2026 deadline with time remaining
- **$2.3B figure** in large, bold text
- **Before/After diagram:** Current state (gaps) vs. Required state (full compliance)

---

## SLIDE 13: REMEDIATION ROADMAP - OVERVIEW

### Content:
**Header:** Remediation Roadmap: Three-Phase Approach

**GRAPHIC PLACEHOLDER:**
[Large Gantt chart showing all 5 findings with parallel remediation tracks]
- X-axis: Dec 2025 → Jun 2026 (7 months)
- Y-axis: 5 findings (color-coded by severity)
- Vertical line marking Q2 2026 CMMC deadline
- Phases: Immediate (0-30 days), Short-term (30-90 days), Medium-term (90-180 days)
- Dependencies shown with arrows
- Milestones marked

**Three-Phase Cards (Horizontal):**

**PHASE 1: IMMEDIATE ACTIONS (0-30 Days) | Target: December 31, 2025 | [RED]**
**Critical Gap Closure:**
- Emergency MFA deployment (VPN, privileged accounts)
- Air-gapped backup infrastructure procurement and deployment
- Privileged access emergency audit (disable orphaned accounts)
- IR plan rapid update
- Vendor access review and termination
- Backup monitoring deployment

**PHASE 2: SHORT-TERM ACTIONS (30-90 Days) | Target: March 31, 2026 | [ORANGE]**
**Permanent Solutions:**
- PAM solution procurement and deployment
- Off-site backup replication to secondary data center
- CSIRT formation, training, and 24/7 coverage implementation
- First backup restoration test (MUSE platform)
- Vendor risk tiering and assessment framework
- EDR deployment to 100% coverage
- Quarterly access reviews implementation

**PHASE 3: MEDIUM-TERM ACTIONS (90-180 Days) | Target: June 30, 2026 | [BLUE]**
**Long-term Posture:**
- Zero Trust architecture implementation (phase 1)
- Immutable backup deployment
- SOAR platform deployment
- Formal Business Impact Analysis
- TPRM platform deployment
- Continuous Data Protection for critical systems
- CMMC Program Office establishment
- Quarterly tabletop exercises

**Bottom Summary:**
**Total Timeline:** 6 months intensive remediation
**All remediation must complete by June 30, 2026 to allow CMMC assessment preparation**

### Talking Points (1 minute 30 seconds):
"Here's our remediation roadmap. We've organized remediation into three phases over six months from December 2025 through June 2026.

The graphic placeholder here should show a Gantt chart with all 5 findings represented as horizontal bars, color-coded by severity - red for critical, orange for high, yellow for medium. The timeline runs from December through June with a prominent vertical line marking the Q2 2026 CMMC deadline. You'll see dependencies - for example, you can't implement immutable backups until you have the air-gapped infrastructure in place first.

Phase 1 is IMMEDIATE ACTIONS - zero to 30 days, target December 31st. These are emergency measures to close the most critical gaps that enabled the September attack. Emergency MFA deployment on all VPN and privileged accounts. Procure and deploy air-gapped backup infrastructure. Audit all privileged access and immediately disable the 12 orphaned accounts from terminated employees. Rapid update to the incident response plan. Review all vendor access and terminate the 8 vendors whose contracts ended.

These are not perfect permanent solutions. These are emergency patches to stop the bleeding.

Phase 2 is SHORT-TERM ACTIONS - 30 to 90 days, target March 31, 2026. This phase focuses on permanent, enterprise solutions. Procure and deploy a full Privileged Access Management platform. Implement off-site backup replication to a second geographic location. Form and train a formal Computer Security Incident Response Team with 24/7 on-call rotation. Conduct our first backup restoration test in over 3 years. Implement a vendor risk tiering framework. Deploy endpoint detection and response to 100 percent coverage - no more gaps.

Phase 3 is MEDIUM-TERM ACTIONS - 90 to 180 days, target June 30, 2026. This phase builds our long-term security posture. Begin implementing Zero Trust architecture. Deploy immutable backups that cannot be deleted or encrypted even with administrative credentials. Implement Security Orchestration and Automated Response platform for faster incident response. Complete our Business Impact Analysis to understand recovery requirements. Deploy a Third-Party Risk Management platform. Establish a formal CMMC Program Office to coordinate ongoing compliance.

All remediation must complete by June 30, 2026 to allow time for CMMC assessment preparation and documentation."

### Graphics Recommendation:
- **CRITICAL: Full Gantt chart** showing:
  - 5 findings as horizontal bars
  - Color-coded by severity
  - Dependencies with arrows
  - Phase separations (vertical dotted lines)
  - Q2 2026 CMMC deadline (solid vertical line)
  - Key milestones (diamonds or stars)
  - Progress indicators if presenting after December
- **Three phase cards** with distinct colors (red, orange, blue gradient)
- **Timeline ruler** at bottom showing months

---

## SLIDE 14: REMEDIATION ROADMAP - DETAILED TIMELINE

### Content:
**Detailed Month-by-Month Breakdown:**

**DECEMBER 2025:**
- Week 1: Executive approval and budget authorization
- Week 2: MFA solution procurement (leveraging existing identity platform)
- Week 2-3: Emergency MFA deployment to VPN infrastructure
- Week 3: Air-gapped backup infrastructure procurement
- Week 3-4: Privileged access emergency audit
- Week 4: MFA deployment to privileged accounts
- Week 4: Vendor access review completion

**JANUARY 2026:**
- Week 1-2: Air-gapped backup infrastructure deployment
- Week 2: Off-site backup location contract negotiation
- Week 2-4: PAM solution vendor evaluation and selection
- Week 3: IR plan update completion
- Week 4: Backup monitoring deployment
- Ongoing: Daily MFA adoption monitoring

**FEBRUARY 2026:**
- Week 1-2: PAM solution procurement
- Week 2: Off-site backup replication configuration
- Week 3-4: CSIRT team selection and formation
- Week 4: First MUSE backup restoration test
- Week 4: Vendor risk tiering framework development
- Ongoing: PAM implementation planning

**MARCH 2026:**
- Week 1-4: PAM solution deployment (phased rollout)
- Week 2: CSIRT training completion
- Week 3: EDR expansion to remaining systems
- Week 4: First quarterly access review
- Week 4: Vendor security assessment program launch
- Milestone: Short-term remediation complete

**APRIL 2026:**
- Week 1-2: Zero Trust architecture design
- Week 2-4: Immutable backup configuration
- Week 3: SOAR platform vendor selection
- Week 4: Business Impact Analysis kickoff
- Ongoing: PAM full adoption, service account migration to certificate-based auth

**MAY 2026:**
- Week 1-3: SOAR platform deployment
- Week 2: Business Impact Analysis completion
- Week 3-4: TPRM platform vendor selection and procurement
- Week 4: First tabletop exercise
- Week 4: Continuous Data Protection deployment begins
- Ongoing: Zero Trust phase 1 implementation

**JUNE 2026:**
- Week 1-2: TPRM platform deployment
- Week 2: CMMC Program Office establishment
- Week 3: Second quarterly access review
- Week 4: Final validation of all controls
- Week 4: CMMC assessment preparation begins
- Milestone: All medium-term remediation complete

**JULY 2026 and beyond:**
- C3PAO Level 2 assessment
- DIBCAC Level 3 assessment preparation
- Continuous improvement and monitoring

### Talking Points (1 minute 30 seconds):
"Let me walk through the detailed month-by-month timeline because timing is critical.

December 2025 is the most intense month. Week 1, we need executive approval and budget authorization. We cannot afford delay. Week 2, we procure MFA solution - we'll leverage our existing identity platform to accelerate deployment. By week 3 and 4, we're deploying MFA to VPN infrastructure and privileged accounts. Simultaneously, we're procuring air-gapped backup infrastructure and conducting the emergency privileged access audit to disable those 12 orphaned accounts.

January 2026, we deploy the air-gapped backup infrastructure. We begin PAM solution vendor evaluation - this is a major procurement, so we need time for proper evaluation. We complete the incident response plan update. We deploy backup monitoring so failures don't go undetected for 11 days anymore.

February, we procure the PAM solution and begin off-site backup replication configuration. We form the CSIRT team and conduct our first MUSE backup restoration test in 3 years. We develop the vendor risk tiering framework.

March is PAM deployment month. This is a phased rollout across the enterprise. We complete CSIRT training. We expand EDR to remaining systems for 100 percent coverage. We conduct the first quarterly access review. By end of March, short-term remediation is complete.

April, we begin Zero Trust architecture design and immutable backup configuration. We select a SOAR platform vendor. We kick off the Business Impact Analysis - this is crucial for understanding our actual recovery requirements, not just assumptions.

May, we deploy the SOAR platform. We complete the Business Impact Analysis. We select and procure the TPRM platform. We conduct our first tabletop exercise to test incident response procedures.

June, we deploy the TPRM platform. We establish the CMMC Program Office as a permanent function. We conduct the second quarterly access review. Final week of June, we do final validation of all controls and begin CMMC assessment preparation.

By end of June 2026, all medium-term remediation is complete, and we're ready to begin the formal CMMC Level 2 assessment process."

### Graphics Recommendation:
- **Calendar/timeline view** showing each month
- **Gantt chart with swim lanes** for each major initiative
- **Milestone markers** at end of each phase
- **Dependency arrows** between related activities
- **Progress bars** showing percent complete for each month (if presenting after December)
- **Critical path highlighted** in red (activities that cannot be delayed)

---

## SLIDE 15: INVESTMENT REQUIRED & ROI JUSTIFICATION

### Content:
**Two-Column Layout:**

**LEFT COLUMN - Investment Breakdown:**

**Total First-Year Investment: $4.5M - $5.9M**

**Category 1: Technology Solutions ($2.8M - $3.5M)**
- PAM platform (licensing, implementation): $800K - $1.2M
- Air-gapped backup infrastructure: $600K - $900K
- Off-site backup replication: $200K - $300K
- SOAR platform: $400K - $600K
- TPRM platform: $300K - $400K
- EDR expansion and SIEM enhancements: $300K - $400K
- Network monitoring and UEBA tools: $200K - $300K

**Category 2: Additional Staffing ($850K - $1.2M annually)**
- Backup administrators (2 FTEs): $200K - $280K
- CSIRT members (4 FTEs): $400K - $600K
- Vendor risk analysts (2 FTEs): $180K - $250K
- CMMC Program Manager (1 FTE): $120K - $150K

**Category 3: External Consultants ($600K - $900K)**
- Forensic investigation retainers: $200K - $300K
- CMMC readiness assessment: $150K - $250K
- Zero Trust architecture design: $150K - $200K
- PAM implementation services: $100K - $150K

**Category 4: Training & Awareness ($200K - $300K)**
- IR training and tabletop exercises: $80K - $120K
- Security awareness campaigns: $60K - $90K
- Technical certifications (CISSP, CISM, etc.): $40K - $60K
- Vendor and executive training: $20K - $30K

**RIGHT COLUMN - ROI Justification:**

**Risk Mitigation Value:**

**Defense Contracts Protected: $2.3B**
- Maintaining CMMC Level 3 eligibility
- Avoiding contract loss or suspension
- Preserving DoD customer relationships

**Future Incident Prevention: $50M - $100M**
- September 2025 attack cost: $15M direct + reputational damage
- Industry average ransomware cost: $4.5M per incident
- Multiple incidents without controls: $50M+ exposure
- Catastrophic data loss scenario: $100M+ exposure

**Regulatory Penalty Avoidance: $10M - $25M**
- GDPR violations: €20M or 4% global revenue
- CMMC non-compliance penalties and contract termination
- SOX Section 404 material weakness remediation costs
- SEC cyber disclosure violations

**Insurance Premium Savings: $2M - $5M annually**
- Current premium increase post-incident: 40-60%
- Demonstrating improved security posture reduces premiums
- Cyber insurance market increasingly requires controls

**Customer Retention Value: $100M+**
- Maintaining trust with airline and airport customers
- Avoiding customer flight to competitors
- Preserving long-term MUSE platform revenue
- Brand reputation protection

**SIMPLE ROI CALCULATION:**
**Total Risk Exposure: $2.4B - $2.5B**
**Investment Required: $4.5M - $5.9M**
**ROI: Preventing just 0.2% of potential losses justifies 100% of investment**

**Break-even: Less than 1 prevented incident**

**Bottom Box:**
This is not optional spending. This is essential risk management to protect shareholder value and business continuity.

### Talking Points (2 minutes):
"Let's talk about investment and return on investment, because I know the immediate question is 'how much will this cost?'

Our total first-year investment requirement is 4.5 to 5.9 million dollars. Let me break this down into four categories.

Technology solutions: 2.8 to 3.5 million dollars. This includes the Privileged Access Management platform, air-gapped backup infrastructure, SOAR platform, Third-Party Risk Management platform, and expanded EDR coverage. These are enterprise-grade solutions that will serve us for years.

Additional staffing: 850 thousand to 1.2 million dollars annually. We're severely understaffed. We have 8 people in our security team. We need backup administrators, CSIRT members, vendor risk analysts, and a CMMC Program Manager. This brings us closer to industry norms for an organization our size.

External consultants: 600 to 900 thousand dollars. This includes forensic investigation retainers so we have experts on-call if another incident occurs, CMMC readiness assessment, and Zero Trust architecture design. These are specialized skills we don't have in-house.

Training and awareness: 200 to 300 thousand dollars. IR training, tabletop exercises, security awareness campaigns, and technical certifications for our team.

Now, why is this investment justified?

We're protecting 2.3 billion dollars in defense contracts. If we lose CMMC Level 3 certification, we lose these contracts. Full stop.

We're preventing a future incident that could cost 50 to 100 million dollars. The September attack cost us 15 million in direct costs, and that doesn't include reputational damage and customer trust erosion. A catastrophic data loss scenario could cost us over 100 million dollars.

We're avoiding regulatory penalties. GDPR violations can be 20 million euros or 4 percent of global revenue - whichever is higher. CMMC non-compliance means contract termination. SOX material weaknesses require extensive remediation and can trigger shareholder lawsuits.

We're saving on insurance premiums. Our cyber insurance premiums increased 40 to 60 percent after the September attack. Demonstrating improved security posture will reduce future premiums. That's 2 to 5 million dollars annually in savings.

We're maintaining customer trust worth over 100 million dollars in long-term MUSE platform revenue. Airlines and airports are evaluating alternatives to our platform because of the September outage. We need to win back their confidence.

Here's the simple math: Our total risk exposure is 2.4 to 2.5 billion dollars. Our investment is 4.5 to 5.9 million dollars. Preventing just 0.2 percent - that's two-tenths of one percent - of potential losses justifies our entire investment.

Break-even is less than one prevented incident. The September attack alone cost 15 million dollars. Our investment is one-third of that.

This is not optional spending. This is essential risk management to protect shareholder value and business continuity."

### Graphics Recommendation:
- **Stacked bar chart** showing the four investment categories
- **ROI calculation visual:** Investment vs. Risk Exposure comparison (huge gap)
- **Break-even analysis graphic:** 1 incident = $15M, Investment = $5M
- **Risk exposure pie chart** showing different risk categories
- **Timeline showing payback period**
- **Insurance premium trend** showing post-incident spike and projected reduction

---

## SLIDE 16: KEY RECOMMENDATIONS & GOVERNANCE

### Content:
**Header:** Management Recommendations & Governance Structure

**Four Recommendation Tiers:**

**1. IMMEDIATE ACTIONS (This Week)**
- Approve emergency budget allocation ($1.5M for Phase 1)
- Authorize emergency MFA deployment
- Authorize air-gapped backup procurement
- Establish executive steering committee for remediation oversight
- Designate executive sponsor (recommend CFO/CIO joint ownership)

**2. GOVERNANCE & ACCOUNTABILITY (Next 30 Days)**
- Establish dedicated CMMC Program Office
  - Program Manager (full-time dedicated role)
  - Reports jointly to CFO and CIO
  - Monthly Audit Committee reporting
  - Quarterly Board presentations
- Assign clear ownership for each finding:
  - Finding #1 (MFA): CISO - accountable for Apr 2026 deadline
  - Finding #2 (Privileged Access): Director of IT Operations - accountable for May 2026
  - Finding #3 (Incident Response): CISO - accountable for Apr 2026
  - Finding #4 (Backup/DR): Director of IT Infrastructure / CFO oversight - accountable for May 2026
  - Finding #5 (Vendor Security): CISO and CPO jointly - accountable for Jun 2026
- Implement KPI dashboard for remediation tracking
- Establish consequence management for missed deadlines

**3. STRATEGIC INITIATIVES (Next 90 Days)**
- Conduct comprehensive Business Impact Analysis across all business-critical systems
- Develop enterprise-wide Zero Trust architecture roadmap (multi-year strategy)
- Re-evaluate security staffing levels and resource allocation (target: 20-25 FTEs)
- Implement quarterly tabletop exercises and annual penetration testing
- Establish formal Risk Management Committee at Board level
- Review and update all IT policies (last update: 2019)

**4. CULTURAL TRANSFORMATION (Ongoing)**
- Shift from reactive to proactive security culture
- Elevate security from cost center to strategic business enabler
- Integrate security into all technology decision-making (DevSecOps)
- Establish security champions program across business units
- Executive security awareness training (Board and C-suite)
- Incentivize security outcomes in performance evaluations

**CRITICAL SUCCESS FACTORS:**
✓ Executive Commitment from CEO and Board
✓ Adequate Resource Allocation (budget and staffing)
✓ Clear Accountability (named owners for each finding)
✓ Monthly Progress Tracking (KPI dashboard)
✓ CMMC Program Office (dedicated focus)
✓ Cross-functional collaboration (IT, Security, Procurement, HR, Legal)

**Bottom Decision Box (Red):**
**DECISION REQUIRED: Approve emergency budget and authorize immediate remediation by December 15, 2025**
**Risk of delay: CMMC certification timeline jeopardy; $2.3B contracts at risk**

### Talking Points (2 minutes 15 seconds):
"Let me conclude with our key recommendations. These are organized into four tiers.

IMMEDIATE ACTIONS - required this week. We need executive approval for emergency budget allocation. Phase 1 immediate actions require approximately 1.5 million dollars. We need authorization to proceed with emergency MFA deployment and air-gapped backup procurement. We need to establish an executive steering committee for remediation oversight. And we need to designate an executive sponsor - I recommend joint ownership between the CFO and CIO because this cuts across IT operations and financial risk.

GOVERNANCE AND ACCOUNTABILITY - required within 30 days. We must establish a dedicated CMMC Program Office. This cannot be someone's part-time responsibility. We need a full-time Program Manager reporting jointly to the CFO and CIO with monthly Audit Committee reporting and quarterly Board presentations.

We need clear ownership for each finding. Finding number 1, MFA - CISO is accountable for the April 2026 deadline. Finding number 2, Privileged Access - Director of IT Operations accountable for May 2026. Finding number 3, Incident Response - CISO accountable. Finding number 4, Backup and DR - Director of IT Infrastructure with CFO oversight accountable for May 2026. Finding number 5, Vendor Security - CISO and Chief Procurement Officer jointly accountable for June 2026.

We need a KPI dashboard for remediation tracking. Monthly reporting to show progress against timeline. And we need consequence management - if someone misses a deadline, there must be accountability.

STRATEGIC INITIATIVES - required within 90 days. We need a comprehensive Business Impact Analysis. Right now, we have assumptions about recovery requirements. We need facts. We need to develop an enterprise-wide Zero Trust architecture roadmap - this is a multi-year strategy, not a six-month project. We need to re-evaluate security staffing. Eight people cannot support an enterprise our size. Industry benchmark is 20 to 25 full-time equivalents for an organization with our revenue and complexity.

We need to implement quarterly tabletop exercises. The September attack showed that people didn't know their roles. We need to practice. We need to establish a formal Risk Management Committee at the Board level. Security can no longer be buried three levels down in IT.

CULTURAL TRANSFORMATION - this is ongoing. We need to shift from reactive to proactive security culture. Security must be elevated from cost center to strategic business enabler. Every business decision has security implications. We need to integrate security into all technology decision-making through DevSecOps practices. We need security champions in every business unit. We need executive security awareness training - not just for IT staff, but for the Board and C-suite.

The critical success factors shown here are non-negotiable. Without executive commitment, adequate resources, clear accountability, monthly tracking, and the CMMC Program Office, we will not succeed.

DECISION REQUIRED: We need approval to proceed by December 15, 2025. That's two weeks from now. The September attack showed us the cost of delay. We cannot afford to wait for budget cycles or committee reviews. Every day of delay increases our risk and moves us closer to missing the CMMC deadline.

Risk of delay: If we don't begin remediation immediately, we jeopardize the CMMC certification timeline. We put 2.3 billion dollars in defense contracts at risk."

### Graphics Recommendation:
- **Four-tier pyramid or staircase** showing recommendation levels
- **Org chart** showing CMMC Program Office structure and reporting lines
- **RACI matrix** (Responsible, Accountable, Consulted, Informed) for each finding
- **KPI dashboard mockup** showing remediation progress metrics
- **Critical success factors** with checkboxes or icons
- **Decision timeline** with December 15, 2025 deadline prominently displayed
- **Risk thermometer** showing increasing risk with delay

---

## SLIDE 17: POSITIVE FINDINGS & STRENGTHS

### Content:
**Header:** Positive Findings - What's Working Well

**Two-Column Layout:**

**LEFT COLUMN - Technical Controls:**

**Network Security:**
- Strong network segmentation between production zones
- DMZ properly configured with appropriate firewall rules
- VLANs effectively separate business units and critical systems
- Intrusion Prevention System (IPS) actively blocking threats

**Patch Management:**
- **94% patch compliance** rate within 30-day window
- Automated patching for non-critical systems
- Well-documented exception and emergency patch processes
- Vulnerability scanner integrated with patch management system

**Encryption:**
- Data-at-rest encryption on all databases and file servers
- TLS 1.2+ enforced for all web applications
- Database encryption properly configured (AES-256)
- Key management procedures documented

**Active Directory:**
- Well-structured OU design
- Group Policy Objects properly configured
- Account lockout policies enforced (5 failed attempts)
- Password complexity requirements meet NIST guidelines (12+ characters, complexity)

**Physical Security:**
- Badge access controls at all data centers and facilities
- CCTV monitoring with 90-day retention
- Visitor escort procedures enforced
- Equipment disposal procedures follow NIST SP 800-88

**RIGHT COLUMN - Process & Culture:**

**Security Awareness:**
- **98% completion** rate for annual security awareness training
- Monthly phishing simulation campaigns (improving scores)
- Incident reporting culture improving
- Security included in onboarding for all new employees

**Change Management:**
- Formal change advisory board (CAB) with weekly meetings
- Change tickets require security review for production changes
- Rollback procedures documented and tested
- Emergency change procedures clearly defined

**Vulnerability Management:**
- Quarterly vulnerability scans performed
- Penetration testing conducted annually by external firm
- Vulnerability prioritization process based on CVSS scores
- Remediation tracking in ticketing system

**Documentation:**
- IT policies reviewed and updated (most recently 2019)
- System architecture diagrams available and relatively current
- Disaster recovery procedures documented
- Configuration management database (CMDB) maintained

**Areas of Excellence:**
- Encryption implementation exceeds industry standards
- Network segmentation reduces blast radius of incidents
- Patch management program is mature
- Security awareness participation is excellent

**Opportunities to Build On:**
These strengths provide a solid foundation for remediation efforts. The team is capable and committed; they need resources and executive support.

### Talking Points (1 minute 30 seconds):
"Before we close, I want to highlight the positive findings - what's working well - because this isn't all bad news. Collins Aerospace has some real strengths to build on.

Network security is strong. We have excellent network segmentation between production zones. Our DMZ is properly configured. VLANs effectively separate business units and critical systems. During the September attack, this segmentation limited the ransomware's spread to some degree - it could have been worse.

Patch management is mature. We have 94 percent patch compliance within 30 days. That's above industry average. We have automated patching for non-critical systems and a well-documented exception process.

Encryption is excellent. Data-at-rest encryption on all databases and file servers. TLS 1.2 or higher enforced for all web applications. We use AES-256 encryption. This is actually an area where we exceed many of our peers.

Active Directory is well-managed. Well-structured organizational unit design. Group Policy Objects properly configured. Account lockout policies enforced. Password complexity requirements meet NIST guidelines.

Physical security is solid. Badge access controls, CCTV monitoring, visitor escort procedures, proper equipment disposal.

Security awareness is excellent. 98 percent completion rate for annual training. That's outstanding. We run monthly phishing simulations, and scores are improving. The incident reporting culture is getting better.

Change management is formal. We have a change advisory board that meets weekly. Security review is required for production changes. Rollback procedures are documented and tested.

Vulnerability management is active. Quarterly scans, annual penetration testing, vulnerability prioritization based on CVSS scores.

The point I want to make is this: Collins Aerospace has a capable and committed team. We have some excellent foundational controls in place. What we lack is adequate resources and executive support to address the gaps.

These strengths provide a solid foundation for our remediation efforts. We're not starting from zero. We're building on existing capabilities and filling critical gaps."

### Graphics Recommendation:
- **Dashboard-style layout** with green checkmarks for each positive area
- **Comparison bars** showing Collins vs. Industry Average (where Collins exceeds)
- **94% patch compliance** and **98% training completion** in large, bold numbers with green highlighting
- **Shield or trophy icons** for areas of excellence
- **Foundation graphic** showing strengths as the base for building remediation
- **Team photo or icon** representing the capable staff

---

## SLIDE 18: CLOSING - QUESTIONS & CONTACT

### Content:
**Clean, Professional Closing Slide:**

**CENTER - Large Text:**
**Questions?**

**Below - Contact Information:**

**Audit Team:**

**Noble Antwi**
Lead IT Auditor
Illinois Institute of Technology
Master's in Cybersecurity & Digital Forensics

**Krupa Prakash Panchal**
Senior IT Auditor
Illinois Institute of Technology
Master's in Cybersecurity & Digital Forensics

**Engagement Details:**
- Audit Period: September - November 2025
- Frameworks Applied: COBIT 2019, NIST SP 800-53, CMMC 2.0, NIST CSF, SOX
- Total Audit Hours: 485 hours
- Controls Tested: 67 objectives

**Follow-up Resources Available:**
- Detailed findings report (40+ pages)
- Remediation project plans
- CMMC gap analysis documentation
- Budget and resource planning templates

**BOTTOM:**
*Thank you for your attention. We look forward to supporting Collins Aerospace through the remediation process.*

### Talking Points (1 minute):
"Thank you for your time and attention.

To summarize what we've covered today: We conducted a comprehensive post-incident audit following the September 2025 ransomware attack. We identified 5 significant findings - 2 critical, 2 high, and 1 medium severity.

These findings are not just technical issues. They represent 2.3 billion dollars in defense contracts at risk, ongoing exposure to future attacks, and significant compliance gaps that must be closed by Q2 2026.

But here's the good news: These problems are solvable. We have a clear roadmap. Management has committed to remediation timelines. We have budget estimates and ROI justification. We've identified the critical success factors.

What we need now is three things: executive commitment, adequate resources, and clear accountability to execute this roadmap.

The September attack was a wake-up call. We cannot afford a second one.

Krupa and I are available for any questions you have - technical questions about the findings, clarification on timelines, discussion of recommendations, or anything else.

We've prepared detailed documentation including a 40-page findings report, remediation project plans, CMMC gap analysis, and budget templates. All of this is available to support your decision-making.

Thank you again. I'll now open the floor for questions."

**[PAUSE FOR QUESTIONS]**

**Prepared Q&A Responses:**

**Q: "Can we do this faster?"**
A: "The immediate actions by December 31st close the critical gaps. The rest requires procurement, testing, and proper implementation. Rushing increases risk of implementation errors that could create new vulnerabilities."

**Q: "Can we do this cheaper?"**
A: "We can phase some initiatives, but the immediate and short-term actions are non-negotiable for CMMC compliance. Delaying medium-term items means accepting continued risk exposure."

**Q: "What if we don't get CMMC Level 3?"**
A: "We lose eligibility for 2.3 billion dollars in defense contracts. DoD has stated CMMC compliance is mandatory - no waivers, no extensions. Competitors who achieve certification will win contracts we can't bid on."

**Q: "Why wasn't this prevented?"**
A: "Multiple factors: deferred security investments, rapid growth outpacing security maturity, organizational silos, cultural acceptance of gaps. The root cause is treating security as a cost center rather than risk management."

**Q: "Who's responsible for fixing this?"**
A: "We've assigned clear owners for each finding. CISO, Director of IT Operations, Director of IT Infrastructure, and CPO share accountability with executive oversight from CFO and CIO."

**Q: "How confident are you in the timeline?"**
A: "The timeline is aggressive but achievable if we begin immediately. December 15th approval deadline is critical. Any delay cascades through the entire schedule and jeopardizes the June 2026 completion target."

### Graphics Recommendation:
- **Professional aerospace background** (matching title slide)
- **Contact information in clean, readable font**
- **QR code** linking to detailed findings report (optional)
- **Collins Aerospace and Illinois Tech logos** (if permitted)
- **Simple, elegant design** - no clutter

---

## TOTAL PRESENTATION TIMING SUMMARY:

- Slide 1 (Title): 0:30
- Slide 2 (Agenda): 0:45
- Slide 3 (Executive Summary): 1:30
- Slide 4 (Company Context): 1:00
- Slide 5 (Attack Timeline): 1:45
- Slide 6 (Methodology): 1:30
- Slide 7 (All Findings Overview): 2:00
- Slide 8 (Finding #1 Detail): 2:00
- Slide 9 (Finding #4 Detail): 2:15
- Slide 10 (Findings #2 & #3): 2:00
- Slide 11 (Finding #5): 1:30
- Slide 12 (CMMC Risk): 2:00
- Slide 13 (Remediation Overview): 1:30
- Slide 14 (Remediation Detail): 1:30
- Slide 15 (Investment & ROI): 2:00
- Slide 16 (Recommendations): 2:15
- Slide 17 (Positive Findings): 1:30
- Slide 18 (Closing): 1:00

**TOTAL SPEAKING TIME: ~27 minutes**
**Recommended: Cut to 18-20 minutes by moving faster through slides 4, 6, 10, 11, 14, 17**
**Or: Present as 27-minute comprehensive briefing for executive/Board audience**

---

## PRONUNCIATION GUIDE FOR NOBLE:

- **CMMC**: Say "C-M-M-C" (each letter separately)
- **DIBCAC**: Say "DIB-back" (rhymes with "bib-back")
- **C3PAO**: Say "C-three-P-A-O"
- **NIST**: Say "nist" (rhymes with "fist")
- **COBIT**: Say "COE-bit"
- **CSIRT**: Say "C-sirt" or "see-sirt"
- **PAM**: Say "P-A-M" (each letter) or "pam" (like the name)
- **SOAR**: Say "soar" (like the word "soar")
- **TPRM**: Say "T-P-R-M" (each letter separately)
- **DMZ**: Say "D-M-Z" (each letter)
- **VLAN**: Say "V-lan"
- **RTO**: Say "R-T-O" (each letter)
- **RPO**: Say "R-P-O" (each letter)
- **SOX**: Say "socks" or "S-O-X"

---

## FINAL NOTES:

1. **This is a comprehensive 18-slide deck** designed for executive/Board presentation
2. **Each slide has detailed talking points** written in natural English for you
3. **Graphic recommendations** are provided where visuals add value
4. **Timing can be adjusted** by speaking pace - 18-27 minutes depending on detail level
5. **All content is technically accurate** after the service account correction
6. **APA citations available** in the main audit report document
7. **You now have the structure to build your aesthetic version** in your preferred PowerPoint style

Good luck with your presentation, Noble! 🎯🇬🇭
