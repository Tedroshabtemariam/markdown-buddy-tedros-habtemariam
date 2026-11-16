# AI Prompts and Key Responses Appendix

> **AI Assistance Declaration:** I used ChatGPT by OpenAI on November 16, 2026, for documentation structure, Markdown-formatting suggestions, wording refinement, and validation planning. This appendix records the final prompts and key response content. I verified suggestions using manual syntax review, Pandoc parsing, file/path checks, independent formula inspection, and a self spot-check. All final calculations are performed by R. I am responsible for the accuracy and originality of this work.

## Tool Record

| Item | Disclosure |
|---|---|
| Tool | ChatGPT by OpenAI |
| Model/version | Model displayed in the ChatGPT interface at the time of use |
| Date used | November 16, 2026 |
| Data shared | A description of a fictional study-room project; no real or personal data |
| Verification | Manual syntax review, Pandoc parsing, path checks, formula inspection, and self spot-check |

## Prompt Set 1: README Structure

### Seed Prompt

> Explain what sections a good GitHub README for an R data analysis project should include.

### Key Response

The response recommended a title, overview, objectives, repository structure, dataset description, requirements, installation, usage, outputs, limitations, licensing, author information, and AI disclosure.

### Refinement Prompt

> Revise the sections list so it is concise and uses Markdown headers and bullet formatting. Keep it suitable for a small base-R project that analyzes synthetic study-room bookings.

### Key Response

The revision organized the sections with Markdown headings, shortened repetitive descriptions, and focused the structure on a small educational R project.

### Critique/Validation Prompt

> Check the Markdown syntax for correctness and readability. Identify invalid heading levels, missing code-fence labels, broken relative links, unclear measures, privacy issues, or claims of execution and deployment that have not been verified.

### Key Response

The critique emphasized consistent heading levels, language labels on code blocks, exact relative links, a clear synthetic-data statement, precise definitions of room-hours and student-hours, and avoiding unsupported verification claims.

### Changes Made After Review

- Added an exact repository tree and variable dictionary.
- Added R and Bash labels to fenced code blocks.
- Explained the difference between bookings, room-hours, and student-hours.
- Added privacy, limitations, verification, and ethics sections.
- Marked RStudio execution, knitting, and GitHub publication as pending.

## Prompt Set 2: Complete README Draft

### Seed Prompt

> Here is a summary of my R project: it reads synthetic study-room bookings, validates required fields, calculates completed room-hours and student-hours, summarizes usage by room type and time slot, and saves two CSV tables and a bar chart. Generate a professional README.md using Markdown. Do not calculate the final numerical results or claim the script was executed.

### Key Response

The response produced a README draft with project purpose, data description, requirements, installation, example usage, expected outputs, limitations, and author information.

### Refinement Prompt

> Add sections for Installation, Example Code, License, Ethics and Privacy, Validation and Refinement, and AI Assistance Disclosure. Keep the tone concise and professional.

### Key Response

The refined draft added the requested sections and used short paragraphs, bullets, tables, and fenced code examples.

### Critique/Validation Prompt

> Review the README for syntax errors and suggest two improvements for clarity. Confirm that every referenced path matches the repository and that no public GitHub link or successful R execution is claimed without evidence.

### Key Response

The critique suggested adding an exact repository tree and defining the two usage measures. It also recommended labeling the clone URL as an example and documenting remaining checks.

## Prompt Set 3: R Markdown Documentation

### Seed Prompt

> Here is my R script description: it validates synthetic study-room bookings, filters completed bookings, calculates room-hours and student-hours, creates grouped summaries, and saves outputs. Suggest Markdown formatting and R code-block examples.

### Key Response

The response suggested sections for purpose, inputs, validation, processing logic, outputs, execution, verification, limitations, and privacy, with short R examples.

### Refinement Prompt

> Add syntax highlighting and improve section organization using Purpose, Inputs, Processing Logic, Outputs, How to Run, Verification Pattern, Limitations, and Privacy and Ethical Use. Use valid named R Markdown chunks with eval=FALSE.

### Key Response

The response recommended a YAML header, named R chunks, `eval=FALSE` for explanatory examples, a table of inputs and outputs, and relative links to related files.

### Critique/Validation Prompt

> Is the document consistent with R Markdown best practices? Check the YAML, chunk syntax, heading hierarchy, relative paths, and whether any statement requires execution evidence.

### Key Response

The critique recommended keeping the full calculation in the `.R` script, using the `.Rmd` for explanation, and distinguishing structural checks from the pending RStudio knit.

## Prompt Set 4: Reflection and Ethical Review

### Final Prompt

> Help organize three first-person reflections: how AI improved the documentation, what risks or weaknesses appeared, and how validation changed the final project. Do not invent R execution, GitHub publication, or peer-review evidence. Discuss synthetic data, privacy, unsupported claims, manual verification, and why AI output remained a draft.

### Key Response

The response highlighted AI's value for structure and editing, while warning that AI can invent execution status, dependencies, links, or project-specific details. It recommended comparing every statement with the actual repository and clearly labeling pending checks.

## Final Human Review Decisions

- The project uses only synthetic data.
- No peer review is claimed; the documented check is a self spot-check.
- No public repository, successful R run, or successful RStudio knit is claimed yet.
- The R script, not AI text, performs all calculations.
- Tedros Habtemariam must complete the final run, knit, GitHub preview, and LMS submission personally.
