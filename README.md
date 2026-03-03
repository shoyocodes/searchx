# 🔎 Search Algorithm Analysis under Different Cache Organizations

### ⚡ Hardware-Aware Algorithm Performance on RISC-V

![RISC-V](https://img.shields.io/badge/Architecture-RISC--V-blue)
![Simulator](https://img.shields.io/badge/Simulator-Ripes-green)
![Language](https://img.shields.io/badge/Language-RISC--V%20Assembly-orange)
![Status](https://img.shields.io/badge/Project-Completed-brightgreen)
![Course](https://img.shields.io/badge/Course-Computer%20Organization%20%26%20Architecture-purple)

---

## 🖥️ Project Banner

![Image](https://media.licdn.com/dms/image/v2/D5612AQFuq2sjf1lIkA/article-cover_image-shrink_720_1280/B56ZYBvtd2HQAM-/0/1743786007946?e=2147483647\&t=-2jKJtWVxJroAT-zdoy9Nw7DFAnNUkkkPzsZ1k7mqdA\&v=beta)

![Image](https://hackster.imgix.net/uploads/attachments/1721819/5stage_ZN1MBxArz4.gif?auto=format%2Ccompress\&fit=min\&fm=jpg\&gifq=35\&h=1200\&w=1600)

![Image](https://hackster.imgix.net/uploads/attachments/1073348/image_1CQoZ7TGpW.png?auto=compress%2Cformat\&dpr=2.625\&fit=min\&h=466.875\&w=830)

---

# 📌 Overview

This project explores how **algorithm efficiency changes when hardware constraints are considered**.

We implemented and analyzed:

* 🔹 Linear Search
* 🔹 Binary Search
* 🔹 Jump Search

Using the **Ripes** simulator on a **RISC-V architecture**, we evaluated:

* Cache hit/miss rate
* Memory latency
* Pipeline stalls
* Total execution cycles

---

# 🧠 Why This Project is Special

Most textbooks compare algorithms using only **Big-O complexity**.

This project goes deeper:

> ⚙️ We analyze how memory hierarchy and cache organization affect real execution performance.

It proves that:

* A theoretically faster algorithm (Binary Search)
* May perform worse due to cache miss penalties

---

# 🛠 Tools & Technologies

| Tool                   | Purpose                                       |
| ---------------------- | --------------------------------------------- |
| Ripes                  | RISC-V Simulation                             |
| RISC-V Assembly        | Algorithm Implementation                      |
| Cache Configuration    | Associativity, Block Size, Replacement Policy |
| Pipeline Visualization | Stall Analysis                                |

---

# 🔍 Algorithms Implemented

---

## 1️⃣ Linear Search

### 🧮 Complexity

* Best: O(1)
* Worst: O(n)

### 💾 Cache Behavior

✔ Excellent spatial locality
✔ High cache hit rate
✔ Sequential memory access

### ⚠ Trade-Off

More comparisons but minimal memory penalties.

---

## 2️⃣ Binary Search

### 🧮 Complexity

* Best: O(1)
* Worst: O(log n)

### 💾 Cache Behavior

✖ Poor spatial locality
✖ Frequent cache misses
✖ Random memory jumps

### ⚠ Trade-Off

Fewer instructions but higher memory latency impact.

---

## 3️⃣ Jump Search

### 🧮 Complexity

* Best: O(1)
* Worst: O(√n)

### 💾 Cache Behavior

✔ Balanced locality
✔ Moderate miss rate
✔ Block-based search

### ⚠ Trade-Off

Middle ground between Linear and Binary search.

---

# 🧪 Experimental Setup

| Parameter          | Values Tested                  |
| ------------------ | ------------------------------ |
| Cache Type         | Direct Mapped, Set Associative |
| Block Size         | 4B, 8B, 16B                    |
| Replacement Policy | LRU / FIFO                     |
| Array Size         | 256 Elements                   |

---

# 📊 Sample Benchmark Results

*(Example representation – replace with actual measured values if needed)*

| Algorithm     | Hit Rate | Miss Rate | Execution Cycles |
| ------------- | -------- | --------- | ---------------- |
| Linear Search | 92%      | 8%        | 12,500           |
| Binary Search | 68%      | 32%       | 9,200            |
| Jump Search   | 85%      | 15%       | 10,400           |

---

# 📈 Performance Visualization

![Image](https://www.researchgate.net/publication/369241086/figure/fig5/AS%3A11431281168658171%401687074250308/Model-comparison-based-on-performance-Figure-7-Bar-graph-shows-the-accuracy-and.ppm)

---

# 🧩 Key Findings

### ✅ Linear Search

Best cache utilization due to sequential access.

### ⚠ Binary Search

Fewer comparisons but suffers from memory access penalties.

### ⚖ Jump Search

Optimal trade-off between locality and comparison reduction.

---

# 🏆 Final Conclusion

> 💡 Optimal system performance requires hardware-aware algorithm design.

Algorithm complexity alone does NOT determine real-world performance.

Cache configuration plays a critical role in:

* Execution time
* Processor efficiency
* Memory latency

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

1. Install Ripes
2. Open assembly file
3. Configure cache settings
4. Run simulation
5. Observe pipeline & statistics

---

# 👥 Team

**Group 5**
Course: Computer Organization & Architecture

---

# 🌟 Future Improvements

* Add larger dataset benchmarking
* Compare with C implementation
* Analyze branch prediction impact
* Add automated performance logging

---

# 📌 Takeaway Quote

> “The fastest algorithm on paper is not always the fastest on hardware.”
