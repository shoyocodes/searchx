
# 🔎 Search Algorithm Analysis under Different Cache Organizations

<p align="center">

![RISC-V](https://img.shields.io/badge/Architecture-RISC--V-0C7BDC?style=for-the-badge\&logo=riscv\&logoColor=white)
![Simulator](https://img.shields.io/badge/Simulator-Ripes-2ECC71?style=for-the-badge)
![Language](https://img.shields.io/badge/Language-RISC--V%20Assembly-F39C12?style=for-the-badge)
![Cache Analysis](https://img.shields.io/badge/Focus-Cache%20Optimization-8E44AD?style=for-the-badge)
![Pipeline](https://img.shields.io/badge/Analysis-Pipeline%20Stalls-34495E?style=for-the-badge)
![Course](https://img.shields.io/badge/Course-Computer%20Organization%20%26%20Architecture-E74C3C?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-27AE60?style=for-the-badge)

</p>

---

## 🖥 Project Visualization

![Image](https://docs.openhwgroup.org/projects/cv32e40p-user-manual/en/cv32e40p_v1.1.0/_images/CV32E40P_Block_Diagram.png)

![Image](https://media.licdn.com/dms/image/v2/D5612AQFuq2sjf1lIkA/article-cover_image-shrink_720_1280/B56ZYBvtd2HQAM-/0/1743786007946?e=2147483647\&t=-2jKJtWVxJroAT-zdoy9Nw7DFAnNUkkkPzsZ1k7mqdA\&v=beta)

![Image](https://hackster.imgix.net/uploads/attachments/1721819/5stage_ZN1MBxArz4.gif?auto=format%2Ccompress\&fit=min\&fm=jpg\&gifq=35\&h=1200\&w=1600)

![Image](https://hackster.imgix.net/uploads/attachments/1073348/image_1CQoZ7TGpW.png?auto=compress%2Cformat\&dpr=2.625\&fit=min\&h=466.875\&w=830)

---

# 📌 Overview

This project evaluates how searching algorithms behave under different **cache organizations** using the **Ripes** simulator on a RISC-V architecture.

Instead of comparing algorithms only using theoretical complexity, this study focuses on:

* 💾 Cache Hit/Miss Rate
* ⏱ Memory Access Latency
* ⚙ Pipeline Stalls
* 🔁 Total Execution Cycles

---

# 🎯 Objective

To analyze how **hardware-level cache configuration impacts algorithm performance**, and to determine whether theoretical complexity always translates to practical efficiency.

---

# 🧠 Algorithms Implemented

---

## 1️⃣ Linear Search

### 🔹 Complexity

* Best Case: O(1)
* Worst Case: O(n)

### 🔹 Cache Behavior

✔ Excellent spatial locality
✔ Sequential memory access
✔ Very high cache hit rate

### 🔹 Insight

Although slower in theory, it often performs efficiently due to cache friendliness.

---

## 2️⃣ Binary Search

### 🔹 Complexity

* Best Case: O(1)
* Worst Case: O(log n)

### 🔹 Cache Behavior

✖ Random memory access
✖ Higher cache miss rate
✖ Increased memory latency

### 🔹 Insight

Despite fewer comparisons, performance may degrade due to cache penalties.

---

## 3️⃣ Jump Search

### 🔹 Complexity

* Best Case: O(1)
* Worst Case: O(√n)

### 🔹 Cache Behavior

✔ Balanced access pattern
✔ Moderate miss rate
✔ Partial spatial locality

### 🔹 Insight

Provides a trade-off between linear and binary search.

---

# 🧪 Experimental Setup

| Parameter          | Configurations Tested           |
| ------------------ | ------------------------------- |
| Cache Type         | Direct Mapped / Set Associative |
| Block Size         | 4B, 8B, 16B                     |
| Replacement Policy | LRU / FIFO                      |
| Array Size         | 256 Elements                    |
| Architecture       | RISC-V                          |

---

# 📊 Sample Performance Results

*(Replace with your actual measured results if required)*

| Algorithm     | Hit Rate | Miss Rate | Execution Cycles |
| ------------- | -------- | --------- | ---------------- |
| Linear Search | 92%      | 8%        | 12,500           |
| Binary Search | 68%      | 32%       | 9,200            |
| Jump Search   | 85%      | 15%       | 10,400           |

---

# 📈 Cache & Pipeline Analysis

![Image](https://ars.els-cdn.com/content/image/3-s2.0-B9780128003428000043-f04-18-9780128003428.jpg)

![Image](https://upload.wikimedia.org/wikipedia/commons/0/0c/ComputerMemoryHierarchy.svg)

![Image](https://timmastny.com/blog/visualizing-cpu-pipelining/hdu.svg)

![Image](https://media.springernature.com/lw685/springer-static/image/art%3A10.1186%2Fs13673-014-0016-8/MediaObjects/13673_2014_16_Fig1_HTML.gif)

---

# 🏆 Key Findings

✅ Binary Search is theoretically fastest
❌ But suffers from higher cache miss penalties

✅ Linear Search maximizes spatial locality

⚖ Jump Search provides balanced performance

---

# 💡 Final Conclusion

> Algorithm complexity alone does NOT guarantee optimal performance.

Hardware configuration significantly impacts:

* Processor efficiency
* Memory latency
* Execution time

🔎 The best-performing system is one where **software design aligns with hardware architecture**.

---

# 📂 Project Structure

```
📦 Search-Algorithm-Cache-Analysis
 ┣ 📂 assembly
 ┃ ┣ linear_search.s
 ┃ ┣ binary_search.s
 ┃ ┗ jump_search.s
 ┣ 📂 report
 ┃ ┗ Search Algorithm Analysis under Different Cache Organizations.pdf
 ┗ 📄 README.md
```

---

# 🚀 How to Run

1. Install Ripes Simulator
2. Open assembly file
3. Configure cache settings
4. Run simulation
5. Observe pipeline and cache statistics

---

# 👥 Team

**Group 5**
Computer Organization & Architecture Project

---

# 🔮 Future Enhancements

* Larger dataset benchmarking
* Branch prediction analysis
* C implementation comparison
* Automated cycle logging

---

# 📌 Takeaway

> “The fastest algorithm on paper is not always the fastest on hardware.”


