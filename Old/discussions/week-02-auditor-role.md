# Week 2 Discussion: IT Auditor Role in Business Scenarios

**Posted:** September 2, 2025  
**Word Count:** 387 words  
**Topic:** In the following scenarios, what assistance could an IT auditor provide?
- One company is merging with another. The information systems from the two companies will be merged. IT staff will be reduced
- A new system is being developed that will enable customers to view their account status and submit orders via the Internet. The technology used is new to the company

---

## Response

### Scenario 1: Company Merger with IT System Consolidation

In a merger situation where IT systems need to be integrated and staff will be reduced, an IT auditor brings critical value in several ways. First, the auditor can conduct a comprehensive assessment of both companies' IT environments to identify compatibility issues, security vulnerabilities, and compliance gaps before the systems are merged. This is crucial because I've read about mergers where companies didn't discover major control weaknesses until after integration, which ended up costing millions to fix.

The auditor should evaluate access controls across both systems - when you're merging user bases and reducing staff, you need to ensure that terminated employees lose access immediately and that remaining employees don't accumulate inappropriate privileges from both legacy systems. There's also the data migration risk. The auditor can test data integrity controls and reconciliation procedures to make sure nothing gets lost or corrupted during the consolidation.

From what I understand about change management, the auditor should also review the integration plan itself. Are there proper testing procedures? Rollback plans if something goes wrong? Documentation of the new combined environment? When IT staff are being reduced, you can't afford to lose institutional knowledge, so the auditor can verify that critical processes are properly documented before people leave.

### Scenario 2: New Internet-Facing Customer System

For a new internet-facing system using unfamiliar technology, the IT auditor becomes even more important because the company is basically entering unknown territory. The auditor should be involved from the very beginning of the system development lifecycle - this isn't about auditing after the fact, but preventing problems during development.

Security is obviously the biggest concern here. An internet-facing system handling customer orders and account information is going to be a target, so the auditor needs to evaluate authentication mechanisms, encryption protocols, and access controls. Are they implementing multi-factor authentication? How is customer data being protected both in transit and at rest?

The auditor should also assess whether the company has the internal expertise to manage this new technology. If they don't, that's a huge risk factor. Maybe they need to bring in external specialists or invest in training. The auditor can identify these capability gaps and recommend how to address them.

Finally, compliance is critical for customer-facing systems. Depending on what data they're collecting, they might need to comply with PCI-DSS for payment cards, GDPR if they have European customers, or various privacy regulations. The auditor can map out these requirements and make sure they're built into the system from day one, not bolted on later.

---

## Key Audit Considerations

### Merger Scenario
1. **Due Diligence Assessment** - Evaluate IT risks before integration
2. **Access Control Mapping** - Prevent privilege accumulation and orphaned accounts
3. **Data Migration Testing** - Ensure integrity and completeness
4. **Change Management Review** - Validate integration procedures
5. **Knowledge Retention** - Document critical processes before staff reduction

### New System Scenario
1. **SDLC Integration** - Embed audit in development process
2. **Security Architecture Review** - Authentication, encryption, access controls
3. **Capability Assessment** - Evaluate internal expertise gaps
4. **Compliance Mapping** - PCI-DSS, GDPR, privacy regulations
5. **Third-Party Risk** - If using new vendors or technologies

## Connection to Course Learning

This discussion introduces several concepts that will be explored in depth:
- **Risk assessment** in merger/acquisition contexts
- **SDLC audit involvement** (Week 5 discussion topic)
- **Access control** evaluation (recurring theme in audit findings)
- **Compliance frameworks** (PCI-DSS, GDPR appear throughout course)
- **Change management** controls (Week 8 CrowdStrike incident)

These scenarios also foreshadow the Collins Aerospace audit, where change management failures and access control weaknesses became critical findings.

## Frameworks Referenced
- System Development Lifecycle (SDLC)
- PCI-DSS (Payment Card Industry Data Security Standard)
- GDPR (General Data Protection Regulation)
- Change management best practices
- Merger & acquisition IT due diligence frameworks
