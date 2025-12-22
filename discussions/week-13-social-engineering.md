# Week 13 Discussion: Social Engineering Attacks

**Posted:** November 16, 2025  
**Word Count:** 389 words  
**Topic:** What are some common Social Engineering attacks? Are there emerging trends for this attack vector?

---

## Response

### Understanding Social Engineering Attacks

Social engineering exploits human psychology rather than technical vulnerabilities, making it one of the most effective attack vectors despite advancing security technologies. After researching current trends, I'm struck by how sophisticated these attacks have become.

### Common Social Engineering Techniques

**Phishing:** Email-based deception remains ubiquitous. According to Verizon's 2024 Data Breach Investigations Report, 36% of breaches involved phishing, making it the most common attack vector. The emails have evolved far beyond obvious "Nigerian prince" scams - modern phishing perfectly mimics legitimate business communications.

**Spear Phishing:** Targeted attacks against specific individuals using researched personal information. Attackers study social media, corporate websites, and public records to craft highly convincing personalized messages.

**Pretexting:** Creating fabricated scenarios to extract information. Attackers might pose as IT support, executives, vendors, or even law enforcement to manipulate victims into divulging credentials or performing actions.

**Baiting:** Offering something enticing (free software, USB drives labeled "Confidential - Executive Salaries") to trigger curiosity or greed, leading victims to compromise their own security.

**Quid Pro Quo:** Offering services in exchange for information or access. Classic example: fake IT helpdesk calling employees offering to "fix" non-existent problems while actually stealing credentials.

### Emerging Trends - The Deepfake Threat

The most alarming emerging trend involves AI-powered deepfakes. The **Arup Engineering deepfake incident** demonstrates this perfectly: attackers used deepfake technology in a video conference call to impersonate the company's CFO, convincing a finance employee to transfer $25 million Hong Kong dollars (Adaptivesecurity, 2024). The victim believed they were on a legitimate video call with multiple senior executives - all deepfakes.

According to CrowdStrike's 2025 Global Threat Report, AI-generated deepfakes are becoming increasingly sophisticated and accessible. What previously required significant technical expertise can now be accomplished with consumer-grade tools.

**Other Emerging Trends:**

**Voice Cloning:** Attackers clone executives' voices using publicly available recordings from earnings calls, conferences, or social media. They then use these clones for phone-based authorization bypass.

**AI-Assisted Phishing:** Large language models generate perfectly written, contextually appropriate phishing emails at scale. Grammar and spelling mistakes - traditional red flags - are disappearing.

**Multi-Channel Attacks:** Combining email, phone calls, SMS, and even physical mail to create elaborate scenarios that seem more legitimate.

**Business Email Compromise (BEC) 2.0:** According to the FBI's 2024 IC3 Report, BEC losses exceeded $2.9 billion annually. Attackers now compromise entire email chains, inserting themselves into legitimate conversations to redirect payments.

### Defense Strategies

From an audit perspective, technical controls alone cannot prevent social engineering. Organizations need:

1. **Comprehensive Security Awareness Training:** Moving beyond annual videos to simulated phishing exercises and real-time learning
2. **Verification Procedures:** Mandatory callback/confirmation requirements for sensitive requests, especially financial transactions
3. **Multi-Factor Authentication:** Even if credentials are stolen, MFA provides additional protection
4. **Anomaly Detection:** Behavioral analytics to flag unusual requests or actions
5. **Clear Reporting Channels:** Employees need easy, blame-free ways to report suspicious activities

### Audit Testing Implications

Social engineering resistance requires testing:
- **Simulated phishing campaigns** - What percentage of employees click malicious links?
- **Verification procedure compliance** - Do employees actually follow callback requirements?
- **Training effectiveness** - Can employees recognize modern social engineering tactics?
- **Incident reporting culture** - Do employees report suspicious activity without fear?

The human element remains both the weakest link and the most important defense. No firewall can stop an employee convinced they're helping their CEO during an emergency.

---

## Key Takeaways

1. **36% of breaches involve phishing** (Verizon 2024 DBIR)
2. **Deepfake technology** enables convincing video/audio impersonation
3. **$25M Arup deepfake scam** demonstrates real-world impact
4. **AI-generated phishing** eliminates traditional detection signals
5. **BEC losses exceed $2.9B annually** (FBI IC3 2024)
6. **Multi-channel attacks** increase perceived legitimacy
7. **Technical controls insufficient** - human awareness critical

## Connection to Course Themes

Social engineering analysis connects to multiple audit areas:

- **MFA implementation** (Finding #1) directly counters credential theft
- **User awareness training** gaps identified in Collins audit
- **Incident reporting** procedures evaluation (Finding #3)
- **Vendor impersonation** risks (Finding #5)

## Application to Collins Aerospace Audit

Social engineering considerations influenced audit approach:

**Finding #1 (MFA):**
- Phishing-resistant MFA essential given phishing prevalence
- Credentials alone insufficient in modern threat landscape

**Finding #3 (Incident Response):**
- Employees need clear reporting channels for suspicious activity
- Detection relies partly on user vigilance

**Awareness Recommendations:**
- Regular simulated phishing exercises
- Deepfake awareness training for executives and finance personnel
- Verification procedures for financial transactions

## Frameworks Referenced

- Verizon 2024 Data Breach Investigations Report
- FBI IC3 2024 Annual Report
- CrowdStrike 2025 Global Threat Report
- Palo Alto Networks Unit 42 Social Engineering Report
- Adaptivesecurity Arup deepfake case study

## Reflection

The deepfake attacks particularly worry me because they undermine our most fundamental trust mechanism - seeing and hearing someone we recognize. If we can't trust video conferences with colleagues, what can we trust? This forces organizations to implement verification procedures that feel bureaucratic but are necessary. The $25M Arup loss demonstrates that even sophisticated, well-resourced companies remain vulnerable. As auditors, we need to push for defense-in-depth that assumes any single control (including human judgment) can be compromised.
