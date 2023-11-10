import matplotlib.pyplot as plt
import numpy as np

# Generate sample data
x = np.linspace(0, 10, 100)  # Creating an array of x values
y = x**2  # Calculate y values as a function of x (in this case, x^2)

# Create the plot
plt.figure(figsize=(8, 6))  # Set the figure size
plt.plot(x, y, label='y = x^2', color='b', linewidth=2)  # Create the plot
plt.fill_between(x, 0, y, alpha=0.2)  # Fill the area under the curve

# Add labels and a legend
plt.xlabel('Area on X-axis')
plt.ylabel('Value on Y-axis')
plt.title('Graph of Value vs. Area')
plt.legend()

# Show the plot
plt.grid(True)
plt.show()
