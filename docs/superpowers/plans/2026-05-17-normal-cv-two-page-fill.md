# Normal CV Two-Page Fill Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Make `Andras_Novoszath_CV.pdf` fill its two A4 pages more completely without making it a duplicate of the extended CV.

**Architecture:** Update the normal CV source with a small amount of high-signal content, then tune shared CSS spacing conservatively. Regenerate both PDFs and verify page count plus visual balance.

**Tech Stack:** Markdown CV source, shared CSS, Pandoc, wkhtmltopdf, Poppler tools (`pdfinfo`, optionally `pdftoppm`).

---

## File Structure

- Modify `Andras_Novoszath_CV.md`: add selective content to the normal CV only.
- Modify `resume_styling.css`: adjust shared spacing carefully so both PDFs still fit.
- Regenerate `Andras_Novoszath_CV.pdf`: generated artifact from the normal CV.
- Regenerate `Andras_Novoszath_CV_extended.pdf`: generated artifact to keep shared CSS output consistent.
- Do not modify `Andras_Novoszath_CV_extended.md` unless verification shows a CSS regression that cannot be solved in CSS.

### Task 1: Baseline Measurement

**Files:**
- Read: `Andras_Novoszath_CV.md`
- Read: `Andras_Novoszath_CV_extended.md`
- Read: `resume_styling.css`
- Read: `Andras_Novoszath_CV.pdf`
- Read: `Andras_Novoszath_CV_extended.pdf`

- [ ] **Step 1: Confirm clean starting state**

Run:

```bash
git status --short --branch
```

Expected: branch line only, no modified files.

- [ ] **Step 2: Confirm current PDF page counts**

Run:

```bash
pdfinfo Andras_Novoszath_CV.pdf | rg '^Pages:|^Page size:'
pdfinfo Andras_Novoszath_CV_extended.pdf | rg '^Pages:|^Page size:'
```

Expected: both PDFs report `Pages:           2` and A4 page size.

- [ ] **Step 3: Capture visual baseline images**

Run:

```bash
pdftoppm -png -f 2 -l 2 -singlefile Andras_Novoszath_CV.pdf /tmp/normal-cv-page-2-before
pdftoppm -png -f 2 -l 2 -singlefile Andras_Novoszath_CV_extended.pdf /tmp/extended-cv-page-2-before
```

Expected: `/tmp/normal-cv-page-2-before.png` and `/tmp/extended-cv-page-2-before.png` exist.

### Task 2: Add High-Signal Normal CV Content

**Files:**
- Modify: `Andras_Novoszath_CV.md`

- [ ] **Step 1: Add one Dorsum bullet**

In `Andras_Novoszath_CV.md`, under `### Junior Consultant & Technical Writer | Dorsum`, add this bullet after the existing first bullet:

```markdown
- Translated compliance requirements into developer-facing guidelines and introduced single-source documentation practices.
```

- [ ] **Step 2: Add one compact education detail if page two still needs content**

If the page still looks sparse after rebuilding in Task 4, replace the Ph.D. education bullet in `Andras_Novoszath_CV.md` with:

```markdown
- **Ph.D., Science & Technology Studies** -- The Open University, 2010 -- 2016. Ethnographic study of knowledge production and technologies; fieldwork on the Bristol Pound local currency.
```

If Task 4 shows the Dorsum bullet plus CSS is enough, leave the education line unchanged.

- [ ] **Step 3: Keep excluded content out**

Do not add these from the extended CV:

```markdown
## Publications & Writing
```

Do not add extra extended-only education entries such as Lancaster, ELTE, Utrecht, or business informatics.

### Task 3: Tune Spacing Conservatively

**Files:**
- Modify: `resume_styling.css`

- [ ] **Step 1: Increase section rhythm slightly**

In `resume_styling.css`, change the `h2` rule from:

```css
    margin-bottom: 0px;
    margin-top: 20px;
```

to:

```css
    margin-bottom: 2px;
    margin-top: 22px;
```

- [ ] **Step 2: Increase list rhythm slightly**

In `resume_styling.css`, change the `ul` and `li` rules from:

```css
ul {
    margin: 0px 0;
    padding-left: 22px;
    margin-bottom: 16px;
}

li {
    margin-top: 1px;
    margin-bottom: 2px;
}
```

to:

```css
ul {
    margin: 0px 0;
    padding-left: 22px;
    margin-bottom: 17px;
}

li {
    margin-top: 1px;
    margin-bottom: 3px;
}
```

- [ ] **Step 3: Avoid first-pass font changes**

Do not change `body` `font-size` or `line-height` in the first pass. Those affect both PDFs strongly and should only be changed if the visual check still shows the normal CV page two is too sparse.

### Task 4: Rebuild and Verify PDFs

**Files:**
- Modify: `Andras_Novoszath_CV.pdf`
- Modify: `Andras_Novoszath_CV_extended.pdf`

- [ ] **Step 1: Rebuild generated PDFs**

Run:

```bash
make convert
```

Expected: command exits 0. Pandoc title warnings are acceptable.

- [ ] **Step 2: Verify both PDFs are still two pages**

Run:

```bash
pdfinfo Andras_Novoszath_CV.pdf | rg '^Pages:|^Page size:'
pdfinfo Andras_Novoszath_CV_extended.pdf | rg '^Pages:|^Page size:'
```

Expected: both PDFs report `Pages:           2` and A4 page size.

- [ ] **Step 3: Capture after images**

Run:

```bash
pdftoppm -png -f 2 -l 2 -singlefile Andras_Novoszath_CV.pdf /tmp/normal-cv-page-2-after
pdftoppm -png -f 2 -l 2 -singlefile Andras_Novoszath_CV_extended.pdf /tmp/extended-cv-page-2-after
```

Expected: `/tmp/normal-cv-page-2-after.png` and `/tmp/extended-cv-page-2-after.png` exist.

- [ ] **Step 4: Visually inspect page two**

Open or view `/tmp/normal-cv-page-2-after.png`.

Expected:

- The normal CV second page has visibly less empty bottom whitespace than before.
- The added content reads naturally.
- Text does not collide with the bottom margin.

Open or view `/tmp/extended-cv-page-2-after.png`.

Expected:

- The extended CV still fits cleanly on page two.
- No section or link block is pushed into an awkward overflow.

### Task 5: Adjust If Needed

**Files:**
- Modify if needed: `Andras_Novoszath_CV.md`
- Modify if needed: `resume_styling.css`
- Regenerate: `Andras_Novoszath_CV.pdf`
- Regenerate: `Andras_Novoszath_CV_extended.pdf`

- [ ] **Step 1: If the normal CV is still sparse, apply the education detail**

Use the education replacement from Task 2 Step 2, then rerun Task 4.

- [ ] **Step 2: If the extended CV overflows or looks cramped, reduce CSS changes**

Revert `h2 margin-top` to `21px` first:

```css
    margin-top: 21px;
```

If still cramped, revert `li margin-bottom` to `2px`:

```css
    margin-bottom: 2px;
```

Then rerun Task 4.

- [ ] **Step 3: If the normal CV still does not fill enough after content and safe spacing**

Add this compact certification line by replacing the certifications list item:

```markdown
- Mathematics for Machine Learning (Coursera, 2019); IBM Cognitive Class -- Data Science Foundations & Business levels (2017); Arc Certified Remote Data Scientist (2022); Using Databases with Python (Coursera, 2018).
```

Then rerun Task 4.

### Task 6: Final Checks and Commit

**Files:**
- Check: all modified files

- [ ] **Step 1: Check Markdown/CSS whitespace**

Run:

```bash
git diff --check
```

Expected: no output.

- [ ] **Step 2: Review final diff**

Run:

```bash
git diff --stat
git diff -- Andras_Novoszath_CV.md resume_styling.css
```

Expected: only targeted normal CV content and conservative CSS spacing changes, plus regenerated PDF binaries.

- [ ] **Step 3: Commit**

Run:

```bash
git add Andras_Novoszath_CV.md resume_styling.css Andras_Novoszath_CV.pdf Andras_Novoszath_CV_extended.pdf
git commit -m "Fill normal CV two-page layout"
```

Expected: commit succeeds.

- [ ] **Step 4: Final status**

Run:

```bash
git status --short --branch
```

Expected: clean worktree, branch ahead of `origin/main` by one commit.

## Self-Review

- Spec coverage: the plan implements balanced content plus spacing, keeps the normal CV concise, regenerates PDFs, and verifies both page counts.
- Placeholder scan: no unresolved placeholders or vague implementation steps remain.
- Type consistency: file names and commands match the repository structure and Makefile targets.
