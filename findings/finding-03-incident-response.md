# Finding #3: Inadequate Incident Response Capabilities

**Severity:** HIGH  
**Risk Rating:** CVSS 7.5 (High)  
**Target Remediation Date:** April 30, 2026  
**Finding Owner:** CISO

---

## Executive Summary

Collins Aerospace's incident response capabilities are inadequate for an organization of its size, complexity, and threat profile. The incident response plan is outdated (last updated 2021), no dedicated CSIRT exists, and the September 2025 ransomware incident revealed 16-18 hour detection delays and coordination failures. Without proper IR capabilities, Collins cannot meet CMMC Level 2 requirements or effectively respond to sophisticated cyber attacks.

## Detailed Finding

### What We Found (Condition)

**Incident Response Plan Deficiencies:**
- Current IR plan last updated: March 2021 (4+ years old)
- Plan doesn't address ransomware response procedures
- Contact information outdated (42% of listed personnel no longer in roles)
- Playbooks generic; not tailored to Collins' environment
- No integration with business continuity/disaster recovery plans
- Backup and restoration procedures not included

**No Dedicated CSIRT:**
- No formal Computer Security Incident Response Team
- Security team of 8 handles incidents "as they arise"
- No 24/7 on-call rotation
- Incident response responsibilities unclear
- No dedicated forensic capabilities
- External incident response retainer, but not exercised regularly

**Detection and Response Gaps (Evidenced by September Attack):**
- **16-18 hour detection delay** (breach at 22:45 GMT Sep 19, detected ~08:00 GMT Sep 20)
- No 24/7 Security Operations Center (SOC) monitoring
- SIEM coverage incomplete (64% of servers, 71% of workstations)
- EDR deployed but alerts not monitored overnight
- Network intrusion detection systems (IDS) present but understaffed
- Log retention only 30 days (insufficient for forensics)

**Incident Response Process Weaknesses:**
- No formal incident categorization or priority matrix
- Escalation procedures unclear
- Evidence preservation procedures inadequate (some forensic evidence lost)
- Communication protocols insufficient
- Post-incident review process informal

**Tabletop Exercise Gaps:**
- Last tabletop exercise: November 2022 (3 years ago)
- No ransomware scenario ever exercised
- Exercises don't include executive team
- No third-party facilitation or independent assessment
- Action items from 2022 exercise not fully implemented

**Third-Party Coordination:**
- Incident response retainer with Mandiant (not exercised in 2+ years)
- Law enforcement notification procedures unclear
- Cyber insurance carrier notification delayed (4 days in September)
- Customer notification procedures ad-hoc
- Regulatory notification requirements not documented

### What Should Be (Criteria)

**Industry Standards:**
- **NIST SP 800-61 Rev. 3:** Computer Security Incident Handling Guide
- **NIST SP 800-171:** 3.6.1 Establish operational incident response capability
- **NIST SP 800-171:** 3.6.2 Track, document, and report incidents
- **CMMC 2.0 Level 2:** IR.L2-3.6.1, IR.L2-3.6.2 (Incident response capability)
- **ISO/IEC 27035:** Incident management standards
- **COBIT 2019:** DSS02 - Managed Service Requests and Incidents

**Best Practices:**
- Dedicated 24/7 CSIRT with defined roles
- Incident response plan updated annually (minimum)
- Detection capability target: <1 hour for high-severity incidents
- Bi-annual tabletop exercises with executive participation
- Quarterly IR plan reviews and updates
- Documented playbooks for common attack scenarios
- Forensic readiness procedures
- Automated incident response (SOAR) for common scenarios

### Why This Happened (Cause)

**Root Causes:**

1. **Resource Constraints:**
   - 8-person security team stretched thin
   - No budget for 24/7 SOC staffing
   - CSIRT staffing requires 4+ dedicated FTEs
   - Executive team viewed IR as "nice to have" not "must have"
   - Security budget prioritized prevention over detection/response

2. **Complexity Underestimation:**
   - Collins grew rapidly through mergers (2018 UTC + Rockwell Collins)
   - IT environment complexity increased dramatically
   - Security team size didn't scale with organization growth
   - Assumed existing capabilities sufficient
   - No formal capability maturity assessment

3. **Competing Priorities:**
   - Cloud migration projects consumed security resources
   - CMMC preparation focused on access controls, not IR
   - SOX compliance work prioritized over IR improvements
   - Security team reactive, not proactive
   - IR improvements deferred year after year

4. **False Sense of Security:**
   - "We've never had a major incident" mindset
   - Assumed preventive controls sufficient
   - Underestimated threat landscape sophistication
   - Relied heavily on perimeter defenses
   - Detection and response capabilities underdeveloped

5. **Process and Documentation Gaps:**
   - No owner assigned for IR plan maintenance
   - Turnover in security team caused knowledge loss
   - IR plan updates not prioritized
   - Lessons learned from minor incidents not incorporated
   - No formal IR capability maturity model

### Business Impact (Consequence)

**September 2025 Incident Impact:**
- **Detection Delay:** 16-18 hours enabled attacker to encrypt 1,000+ systems
- **Response Coordination:** Confusion about roles delayed containment
- **Evidence Loss:** Some forensic evidence lost due to improper procedures
- **Recovery Time:** 7 days (vs. target 4 hours) partially due to IR gaps
- **Costs:** $15M+ incident response and recovery costs

**Ongoing Risk:**
- Future incidents will have similar detection/response delays
- Attackers active in environment for extended periods before detection
- Inability to contain sophisticated attacks quickly
- Greater business disruption from delayed response
- Higher incident response costs

**Compliance Impact:**
- **CMMC Level 2:** Direct requirement violation (IR.L2-3.6.1, IR.L2-3.6.2)
- **SOX 404:** Control deficiency in incident management
- **Regulatory:** Potential fines for delayed breach notification
- **Contractual:** Customer SLA violations for incident response times

**Reputation and Trust:**
- Customer confidence erosion from slow September response
- Airline partners concerned about future incidents
- Insurance underwriters questioning cyber risk management
- Potential customer contract losses

## Audit Testing Performed

### Documentation Review
- Reviewed Incident Response Plan (version March 2021)
- Analyzed September 2025 incident timeline and response
- Reviewed tabletop exercise documentation (November 2022)
- Examined SIEM and EDR coverage reports
- Reviewed security team organizational structure

### Interviews Conducted
- CISO
- Director of IT Security
- Security Operations Team (3 analysts)
- IT Operations Manager
- Mandiant engagement partner (external IR firm)

### September Incident Analysis
- Forensic report review
- Timeline reconstruction
- Response coordination assessment
- Evidence handling procedures review
- Communication effectiveness analysis

### Gap Analysis
- Compared current capabilities to NIST SP 800-61
- Assessed CMMC IR requirements compliance
- Benchmarked detection times against industry standards
- Evaluated CSIRT staffing vs. industry norms

### Evidence Obtained
- IR Plan (March 2021 version)
- Organizational charts and staffing documents
- September incident timeline and communications
- Forensic investigation report (Mandiant)
- SIEM/EDR coverage reports
- Tabletop exercise after-action report (2022)

## Recommendations

### Immediate Actions (0-30 Days) - December 2025

**Incident Response Plan Rapid Update:**
1. Update contact information (all personnel, vendors, agencies)
2. Add ransomware-specific playbook
3. Document backup restoration procedures
4. Integrate with business continuity plan
5. Add evidence preservation procedures
6. Include regulatory notification requirements

**Target:** Updated IR plan published by December 20, 2025

**Interim CSIRT Formation:**
- Designate 4 team members for initial CSIRT
- Establish on-call rotation (nights/weekends)
- Define roles: Incident Commander, Technical Lead, Communications, Documentation
- Procure on-call phones and incident response laptops
- Document escalation procedures

**Quick Win Improvements:**
- Enable 24/7 SIEM alerting (even if response delayed)
- Create incident severity matrix and escalation procedures
- Update external contact list (Mandiant, FBI, insurance, legal)
- Procure forensic evidence collection tools
- Schedule monthly IR plan reviews

### Short-Term Actions (30-90 Days) - January-March 2026

**CSIRT Operational Standup:**
- **Staffing:** Hire 4 dedicated CSIRT members
  - Incident Response Manager
  - Senior Incident Response Analyst (2)
  - Forensic Analyst
- **Training:** SANS FOR508, GCIA, GCIH certifications
- **Tools:** Deploy forensic workstations, evidence storage, case management system
- **Process:** Develop and document CSIRT operating procedures

**Budget:** $850K annually (4 FTEs @ ~$120K + $350K benefits/overhead)

**Managed Detection and Response (MDR) Interim Solution:**
- Engage MDR provider for 24/7 monitoring
- Cover gap until full CSIRT operational
- Typical cost: $15K-$25K/month
- Providers: Arctic Wolf, Expel, Red Canary

**Tabletop Exercise Series:**
- **January 2026:** Ransomware scenario
  - Include executive team, IT, legal, communications
  - Third-party facilitation
  - Test IR plan updates
  - Document lessons learned

- **March 2026:** Insider threat scenario
  - Test data exfiltration response
  - Involve HR and legal
  - Test evidence preservation

**SIEM and EDR Expansion:**
- Achieve 100% server coverage (currently 64%)
- Achieve 100% workstation coverage (currently 71%)
- Tune alert thresholds to reduce false positives
- Integrate additional data sources (cloud platforms, network devices)

### Long-Term Actions (90-180 Days) - April-June 2026

**Security Orchestration, Automation, and Response (SOAR):**
- Deploy SOAR platform (Palo Alto Cortex XSOAR, Splunk SOAR, or IBM Resilient)
- Automate common incident response tasks:
  - Endpoint isolation
  - Account disablement
  - IOC blocking
  - Evidence collection
  - Initial triage and enrichment

**Investment:** $400K-$600K (Year 1)

**Threat Intelligence Integration:**
- Subscribe to threat intelligence feeds
- Integrate with SIEM and EDR
- Deploy threat hunting capability
- Proactive threat identification

**Incident Response Retainer Exercise:**
- Conduct joint exercise with Mandiant
- Test callout procedures
- Validate contract terms and response times
- Ensure team familiar with working together

**IR Plan Maturity Enhancement:**
- Develop scenario-specific playbooks:
  - Ransomware
  - Data exfiltration
  - Insider threat
  - Supply chain compromise
  - DDoS
  - Business email compromise
- Create quick reference guides
- Develop decision trees for complex scenarios

**Continuous Improvement:**
- Quarterly tabletop exercises (different scenarios)
- Annual full-scale crisis simulation
- Post-incident reviews after every incident
- Lessons learned database
- Industry threat intelligence sharing (ISAC participation)

### Governance and Metrics

**CSIRT Performance Metrics:**
- Mean Time to Detect (MTTD): Target <1 hour for high-severity
- Mean Time to Respond (MTTR): Target <4 hours for containment
- Mean Time to Recover (MTTR): Target <24 hours for restoration
- Incident categorization accuracy
- False positive rate
- Lessons learned implementation rate

**Executive Reporting:**
- Monthly CSIRT activity dashboard
- Quarterly IR capability maturity assessment
- Annual tabletop exercise summary
- Incident trends and threat landscape briefing

## Management Response

**Management Agrees:** Yes  
**Target Completion Date:** April 30, 2026  
**Responsible Party:** CISO (Primary), Director of IT Security (Support)

**Action Plan:**
1. **December 2025:** Rapid IR plan update; interim CSIRT formation
2. **January 2026:** MDR provider engaged; first tabletop exercise; CSIRT hiring
3. **February 2026:** CSIRT onboarding and training; SIEM/EDR expansion
4. **March 2026:** Second tabletop exercise; CSIRT operational
5. **April 2026:** SOAR platform selection and procurement
6. **May-June 2026:** SOAR deployment; threat intelligence integration

**Resource Commitments:**
- **Staffing:** 4 new CSIRT FTEs ($850K annually)
- **Technology:** 
  - MDR service: $180K-$300K annually (interim)
  - SOAR platform: $400K-$600K (Year 1)
  - Forensic tools: $50K-$75K
  - Training: $40K annually
- **External Services:**
  - Tabletop facilitation: $30K (2 exercises)
  - CSIRT process development: $75K-$100K

**Total Year 1 Investment:** $1.6M-$2.0M

**Success Criteria:**
- IR plan updated and approved by executives
- CSIRT operational 24/7 by April 2026
- MTTD <1 hour for high-severity incidents
- 100% SIEM/EDR coverage achieved
- Quarterly tabletop exercises conducted
- SOAR platform operational by June 2026

## References

- NIST Special Publication 800-61 Revision 3 (Draft)
- NIST Special Publication 800-171 Revision 2 (3.6.1, 3.6.2)
- CMMC 2.0 Level 2 Requirements (IR domain)
- ISO/IEC 27035-1:2023 - Incident Management
- COBIT 2019: DSS02 - Managed Service Requests and Incidents
- September 2025 Forensic Investigation Report (Mandiant)
- Incident Response Plan (March 2021)
- Tabletop Exercise After-Action Report (November 2022)

---

**Finding Status:** Open  
**Last Updated:** November 28, 2025  
**Next Review:** January 15, 2026 (Post-tabletop exercise)
