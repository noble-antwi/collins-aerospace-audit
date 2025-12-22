# September 2025 Ransomware Attack - Detailed Timeline

## Incident Overview

**Attack Date:** September 19, 2025  
**Discovery Date:** September 20, 2025  
**Attack Vector:** Compromised VPN credential without MFA  
**Ransomware Variant:** HardBit (Ransomware-as-a-Service)  
**Initial Access:** 22:45 GMT, September 19, 2025  
**Detection:** ~08:00 GMT, September 20, 2025  
**Detection Delay:** 16-18 hours  
**Recovery Completion:** September 26, 2025  
**Total Duration:** 7 days (168 hours)

---

## Detailed Timeline

### September 19, 2025 - Initial Compromise

**22:45 GMT** - **Initial Breach**
- Attacker successfully authenticates using compromised VPN credential
- Credential belonged to senior infrastructure engineer with elevated privileges
- No multi-factor authentication required for this legacy VPN infrastructure
- Connection originated from IP address in Eastern Europe (later attributed to VPN exit node)
- Standard VPN logs recorded connection but no anomaly detection triggered

**22:47 GMT** - **Initial Reconnaissance**
- Attacker begins network reconnaissance using legitimate administrative tools
- PowerShell commands executed to enumerate Active Directory structure
- Network scanning activity to identify high-value targets
- Activity blends with normal administrative operations (no alerts generated)

**23:15 GMT** - **Credential Harvesting**
- Attacker attempts to harvest additional credentials from compromised system
- Mimikatz-style credential dumping tool executed
- Additional service account credentials obtained
- No endpoint detection and response (EDR) alert generated (system not covered)

**23:45 GMT** - **Lateral Movement Begins**
- Attacker uses harvested service account to access MUSE platform infrastructure
- Remote Desktop Protocol (RDP) connections to multiple MUSE database servers
- Establishes persistence mechanisms (scheduled tasks, registry keys)
- Activity occurs during off-peak hours (minimal security monitoring)

---

### September 20, 2025 (Early Morning) - Attack Escalation

**00:30 GMT** - **Domain Admin Access**
- Attacker escalates privileges to domain administrator level
- Exploits misconfigured service account with unnecessary domain admin rights
- Full administrative control over Active Directory environment achieved
- No privileged access monitoring system in place to detect this escalation

**01:00 GMT** - **Backup Infrastructure Compromise**
- Attacker identifies and accesses backup management servers
- Backup storage systems on network without air-gap protection
- Attacker disables backup jobs for critical systems
- Deletes recent backup snapshots from backup storage
- No immediate alerts generated (backup monitoring checks run once every 6 hours)

**02:00 GMT** - **Ransomware Staging**
- HardBit ransomware binaries uploaded to file shares accessible by all systems
- Encrypted payloads stored in common administrative file locations
- Group Policy Objects (GPOs) modified to execute ransomware on next system reboot/login
- PowerShell scripts prepared for rapid simultaneous execution

**03:30 GMT** - **Pre-Encryption Preparation**
- Attacker creates ransomware execution schedule
- Identifies and maps all critical file servers and databases
- Tests ransomware execution on isolated test system (not detected)
- Shadow Volume Copies deletion prepared
- Windows Event Logs clearing scheduled

**04:00 GMT** - **Encryption Begins - MUSE Platform**
- Ransomware execution triggered across MUSE platform infrastructure
- AES-256 encryption applied to all accessible files
- Database files encrypted (SQL Server .mdf and .ldf files)
- Application configuration files encrypted
- File extensions changed to .hardbit
- Original files securely deleted (making recovery impossible without backups)

**04:15 GMT** - **Backup Systems Encrypted**
- Backup storage systems encrypted simultaneously
- Five days of backup data destroyed
- Backup management database encrypted
- Only backups predating September 14 remain accessible

**04:30 GMT** - **Enterprise File Shares Encrypted**
- Company-wide file shares encrypted
- Engineering documentation, financial records, HR files affected
- Approximately 2.8 million files encrypted across 1,000+ systems

**05:00 GMT** - **Ransom Notes Deployed**
- README_HARDBIT.txt files placed in every encrypted directory
- Ransom note demands $4.5 million USD in Bitcoin
- Contact information for "negotiation" provided
- 72-hour deadline for payment before "permanent data destruction"

**06:00 GMT** - **Attacker Logs Out**
- Attacker terminates all connections
- Event logs partially cleared (some forensic evidence destroyed)
- Attacker maintains backdoor access for potential re-entry

**08:00 GMT** - **Discovery by Operations Team**
- European airports begin Monday morning operations
- MUSE platform check-in kiosks display error messages
- Airport IT teams unable to access MUSE management interfaces
- Initial assumption: network or server outage

**08:15 GMT** - **Ransom Notes Discovered**
- Collins Aerospace operations center receives calls from multiple airports
- System administrators discover ransom notes on file servers
- Incident escalated to IT management

**08:30 GMT** - **Incident Response Initiated**
- Collins Aerospace CISO notified
- Emergency incident response team convened
- Initial assessment: "significant security incident affecting MUSE platform"
- Decision made to isolate affected systems

**09:00 GMT** - **System Isolation**
- Network segmentation implemented to prevent further spread
- VPN access disabled for all users
- Remote access to MUSE platform suspended
- Isolated systems remain encrypted (isolation too late)

---

### September 20, 2025 (Business Day) - Response Mobilization

**09:30 GMT** - **Executive Notification**
- Collins Aerospace CEO and CFO notified
- RTX Corporation (parent company) informed
- Legal counsel engaged
- Cyber insurance carrier notified

**10:00 GMT** - **Forensic Investigation Begins**
- External forensic firm (Mandiant) engaged
- Evidence preservation begins
- Note: Some forensic evidence lost due to improper shutdown procedures
- Memory dumps not captured from live systems before power-off

**11:00 GMT** - **Operational Impact Assessment**
- 170+ airports confirm MUSE platform unavailability
- Airlines shift to manual check-in processes
- Estimated passenger impact: 50,000+ passengers affected in first 4 hours

**12:00 GMT** - **Crisis Management Team Established**
- Cross-functional team formed (IT, Legal, Communications, Operations)
- Communication strategy developed for customers and stakeholders
- Law enforcement notification planned

**14:00 GMT** - **Customer Communication**
- Collins Aerospace issues statement to airport and airline customers
- Acknowledgment of "technical issues affecting MUSE platform"
- No mention of ransomware (legal advice pending)
- Estimated restoration time: "24-48 hours" (significantly underestimated)

**16:00 GMT** - **Initial Backup Assessment**
- Backup team assesses available recovery options
- Discovery: Most recent usable MUSE backup is 6 days old (September 14)
- 5 days of incremental backups encrypted/destroyed
- Data loss window confirmed: September 14-19 (5 days)

**18:00 GMT** - **Recovery Planning**
- Recovery prioritization matrix developed
- Decision: Restore from September 14 backup and manually reconstruct 5 days of data
- Estimated full recovery time revised: 5-7 days

---

### September 20-21, 2025 - Full Impact Realization

**Throughout Day:**
- Major European airports continue manual operations (Heathrow, Brussels, Berlin, Dublin)
- Flight delays accumulate
- 217 flights cancelled between September 20-21
- Passenger complaints surge
- Media attention intensifies

**September 21, 08:00 GMT**
- British Airways issues statement citing "Collins Aerospace system outage"
- Lufthansa diverts some operations to backup check-in systems
- Amsterdam Schiphol Airport reports 3-hour average delays

---

### September 21-24, 2025 - Law Enforcement and Recovery

**September 21, 14:00 GMT** - **Law Enforcement Notification**
- UK National Crime Agency (NCA) notified
- FBI Cyber Division informed (US company)
- Europol coordination initiated
- CISA (Cybersecurity and Infrastructure Security Agency) notified

**September 22-23** - **Forensic Analysis**
- Forensic team analyzes compromised systems
- Attack vector confirmed: VPN credential without MFA
- Lateral movement path mapped
- Backup destruction timeline established
- Malware samples extracted for analysis

**September 24, 11:00 GMT** - **Arrest**
- UK National Crime Agency arrests suspect in West Sussex, England
- 28-year-old individual taken into custody
- Suspected HardBit ransomware affiliate
- Computers and digital evidence seized

**September 24-26** - **System Restoration**
- Restoration from September 14 backup proceeds
- Manual data reconstruction from airport records
- System hardening measures implemented during restoration
- Temporary compensating controls deployed

---

### September 25, 2025 - Public Disclosure

**September 25, 09:00 GMT** - **SEC Form 8-K Filing**
- RTX Corporation files SEC Form 8-K
- Official disclosure of ransomware attack
- Estimated financial impact: "preliminary estimate $15-20 million direct costs"
- Statement: "No ransom was paid"

**Media Response:**
- Bloomberg: "Collins Aerospace Hit by Ransomware, Disrupting Airport Operations"
- Reuters: "RTX Unit Faces Cyber Attack, 170 Airports Affected"
- Aviation Week: "MUSE Platform Outage Highlights Aviation Cybersecurity Risks"

---

### September 26, 2025 - Recovery Completion

**September 26, 18:00 GMT** - **Systems Restored**
- MUSE platform functionality restored to operational status
- All 170 airports back online
- Degraded functionality in some areas (manual workarounds required)
- Data loss confirmed: 2.8 million passenger transactions from September 14-19

**Total Incident Duration:** 7 days (168 hours)
**Target Recovery Time Objective (RTO):** 4 hours
**Actual Recovery Time:** 7 days
**Gap:** 164 hours (4,100% over target)

---

## Post-Incident Timeline

### September 27 - October 2025 - Investigation

**Week 1:**
- Comprehensive forensic report delivered
- Root cause analysis completed
- Incident response lessons learned session
- Board of Directors briefed

**Week 2-4:**
- External audit firm (Illinois Tech team) engaged
- Comprehensive security assessment initiated
- CMMC compliance gap analysis

### November 2025 - Audit Completion

**November 28, 2025:**
- Final audit report delivered
- 5 significant findings identified
- Remediation roadmap presented
- Investment requirements documented

---

## Key Metrics Summary

| Metric | Value |
|--------|-------|
| Time to Initial Compromise | 22:45 GMT, Sep 19 |
| Time to Detection | ~08:00 GMT, Sep 20 |
| Detection Delay | 16-18 hours |
| Systems Encrypted | 1,000+ |
| Airports Affected | 170+ |
| Flights Cancelled | 217 |
| Passengers Impacted | 500,000+ (estimated) |
| Data Loss Window | 6 days |
| Transactions Lost | 2.8 million |
| Recovery Time | 7 days |
| RTO Gap | 164 hours over target |
| Direct Response Costs | $15+ million |
| Ransom Demanded | $4.5 million |
| Ransom Paid | $0 (not paid) |

---

## Attack Vector Analysis

### Primary Entry Point
- **Method:** Compromised VPN credential
- **Account Type:** Standard domain user with elevated infrastructure access
- **MFA Status:** Not required/Not enabled
- **Credential Age:** Unknown (no password rotation policy enforced)
- **Last Successful Login Prior:** 14 days before attack

### Why Attack Succeeded

1. **No Multi-Factor Authentication**
   - Legacy VPN infrastructure lacked MFA requirement
   - Management deferred MFA implementation pending infrastructure upgrade

2. **Excessive Permissions**
   - Compromised account had more privileges than necessary
   - Principle of least privilege not enforced

3. **Inadequate Monitoring**
   - No anomaly detection for VPN access patterns
   - Failed login attempts not correlated or investigated

4. **Detection Gaps**
   - EDR coverage only 64% of servers, 71% of workstations
   - No 24/7 security operations center
   - Limited SIEM coverage

5. **Backup Vulnerability**
   - Backup systems accessible from production network
   - No air-gapped or offline backup copies
   - Backup monitoring insufficient

---

## Lessons Learned

### What Worked
- Network segmentation limited spread to some extent
- Forensic evidence partially preserved
- Law enforcement cooperation led to rapid arrest
- Crisis communication processes adequate
- No ransom paid (company policy upheld)

### What Failed
- MFA not implemented on critical access points
- Detection took 16-18 hours (should be <1 hour for high-severity alerts)
- Backup strategy inadequate for ransomware scenario
- Incident response plan outdated and not tested
- Forensic evidence partially lost due to improper procedures

### Critical Improvements Needed
1. Implement MFA on all privileged and remote access (Finding #1)
2. Deploy air-gapped backups with regular testing (Finding #4)
3. Establish 24/7 CSIRT with proper training (Finding #3)
4. Review and remediate excessive privileges (Finding #2)
5. Assess and monitor all vendor access (Finding #5)

---

**Document Version:** 1.0  
**Last Updated:** December 2, 2025  
**Classification:** Internal Audit Documentation
