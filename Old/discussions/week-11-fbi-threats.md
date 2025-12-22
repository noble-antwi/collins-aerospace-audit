# Week 11 Discussion: FBI Cyber Threat Landscape and Security Audit Tools

**Posted:** November 2, 2025  
**Word Count:** 361 words  
**Topic:** What cyber threats are critical to infrastructure as observed by the FBI recently? Identify 3 sources of security audit tools and best practices.

---

## Response

### FBI Critical Infrastructure Cyber Threats

After reviewing recent FBI cybersecurity advisories and threat intelligence, several critical infrastructure threats stand out as particularly concerning:

**Russian Government Cyber Actors Targeting Critical Infrastructure:** According to FBI Public Service Announcement PSA-250820 (August 2025), Russian government-sponsored actors are actively targeting networking devices and critical infrastructure systems. These actors exploit known vulnerabilities in routers, firewalls, and VPN devices to establish persistent access to networks controlling essential services.

**Ransomware Against Critical Sectors:** The FBI's Internet Crime Complaint Center (IC3) 2024 Annual Report highlights continued escalation of ransomware attacks targeting healthcare, energy, and transportation sectors. What's particularly concerning is attackers' willingness to target organizations where disruption causes immediate public safety risks.

**Supply Chain Compromise:** FBI warnings emphasize supply chain attacks where adversaries compromise software vendors or managed service providers to gain access to multiple downstream victims simultaneously. This "one-to-many" attack model amplifies threat actor efficiency dramatically.

**ICS/OT Targeting:** Building on last week's discussion, the FBI along with CISA, EPA, and DOE issued joint alerts about rising cyber threats specifically targeting operational technology systems. These aren't opportunistic attacks - they demonstrate sophisticated understanding of industrial protocols and safety systems.

### Security Audit Tools and Resources

**1. ISACA IS/IT Audit Programs and Tools**

ISACA provides comprehensive audit programs covering various IT domains including security. Their resources include:
- Pre-built audit programs aligned with COBIT framework
- Control testing procedures and sample test scripts
- Risk assessment templates
- Industry-specific guidance (financial services, healthcare, manufacturing)

What makes ISACA particularly valuable is the alignment with professional certifications (CISA) and ongoing updates to address emerging threats.

**2. SentinelOne Security Audit Tools**

SentinelOne's 2025 guide covers modern security audit toolsets including:
- Vulnerability scanners (Nessus, Qualys, OpenVAS)
- Configuration assessment tools
- Log analysis and SIEM platforms
- Penetration testing frameworks
- Cloud security posture management (CSPM) tools

Their focus on automation and continuous monitoring reflects how security auditing has evolved beyond point-in-time assessments.

**3. UpGuard Cybersecurity Audit Platform**

UpGuard offers integrated cybersecurity audit capabilities combining:
- Third-party risk assessment (vendor security ratings)
- Attack surface monitoring
- Data leak detection
- Continuous security questionnaire automation
- Compliance mapping (SOC 2, ISO 27001, PCI-DSS)

Their platform addresses the challenge we discussed in Week 5 about vendor risk - how do you audit security posture of dozens or hundreds of third parties?

### Integration with Audit Practice

These tools support different audit phases:
- **Planning:** Risk assessment, scope definition, preliminary controls understanding
- **Fieldwork:** Control testing, vulnerability assessment, log analysis
- **Reporting:** Evidence documentation, findings tracking, remediation monitoring
- **Follow-up:** Continuous monitoring, trend analysis, comparative assessment

From the FBI threat landscape, security audits should specifically address:
- Network device configuration and patching
- Supply chain risk management programs
- ICS/OT network segmentation and monitoring
- Incident response capabilities for nation-state actors
- Backup and recovery procedures resilient against ransomware

---

## Key Takeaways

1. **Russian state actors** actively targeting critical infrastructure networking devices
2. **Ransomware evolution** toward public safety-impacting targets
3. **Supply chain attacks** enable one-to-many compromise scenarios
4. **OT/ICS targeting** demonstrates sophisticated adversary capabilities
5. **ISACA resources** align audit programs with COBIT and CISA frameworks
6. **Modern audit tools** enable continuous monitoring, not just point-in-time assessment
7. **Vendor risk assessment** requires specialized tools and platforms

## Connection to Course Themes

This discussion bridges threat intelligence and audit execution:

- **Risk assessment** (Assignment 2) must account for nation-state threats
- **Vendor risk** (Finding #5) requires third-party security assessment tools
- **Incident response** (Finding #3) must address sophisticated persistent threats
- **Audit methodology** integrates automated tools with manual testing

## Application to Collins Aerospace Audit

FBI threat landscape directly informed Collins audit planning:

- **Nation-state actors** targeting aerospace/defense contractors
- **Supply chain** concerns given Collins' vendor ecosystem
- **Ransomware preparedness** validated by September 2024 incident
- **Network device security** assessed as part of Finding #1 and #2

## Frameworks and Tools Referenced

- FBI IC3 Annual Report 2024
- FBI PSA-250820 (Russian infrastructure targeting)
- CISA/FBI/EPA/DOE joint alerts on OT threats
- ISACA audit programs
- SentinelOne security audit tools guide
- UpGuard third-party risk platform
- Nessus, Qualys, OpenVAS vulnerability scanners

## Reflection

The convergence of FBI threat intelligence and practical audit tools demonstrates how IT auditing must be threat-informed, not just compliance-focused. Understanding that Russian state actors target networking devices should directly influence how we test router configurations, VPN security, and perimeter defenses. Audit programs can't be static checklists - they must evolve with the threat landscape. This week's research helped me appreciate why continuing education and threat intelligence monitoring are essential for effective IT auditors.
