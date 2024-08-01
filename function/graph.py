import streamlit as st
import seaborn as sns
import matplotlib.pyplot as plt

def draw_line_plot(df, x_var, y_var):
    st.write(f"Line plot between {x_var} and {y_var}")
    fig, ax = plt.subplots()
    sns.lineplot(data=df, x=x_var, y=y_var, ax=ax)
    st.pyplot(fig)

def draw_bar_plot(df, x_var):
    st.write(f"Bar plot of {x_var}")
    fig, ax = plt.subplots()
    sns.barplot(x=x_var, y=df[x_var].index, data=df, ax=ax)
    st.pyplot(fig)

def draw_histogram(df, x_var):
    st.write(f"Histogram of {x_var}")
    fig, ax = plt.subplots()
    sns.histplot(df[x_var], ax=ax, bins=30)
    st.pyplot(fig)

def draw_pie_chart(df, x_var):
    st.write(f"Pie chart of {x_var}")
    fig, ax = plt.subplots()
    df[x_var].value_counts().plot.pie(ax=ax, autopct='%1.1f%%')
    st.pyplot(fig)

def draw_box_plot(df, x_var):
    st.write(f"Box plot of {x_var}")
    fig, ax = plt.subplots()
    sns.boxplot(x=df[x_var], ax=ax)
    st.pyplot(fig)

def draw_scatter_plot(df, x_var, y_var):
    if x_var and y_var:
        st.write(f"Scatter plot between {x_var} and {y_var}")
        fig, ax = plt.subplots()
        sns.scatterplot(data=df, x=x_var, y=y_var, ax=ax)
        st.pyplot(fig)

def draw_pair_plot(df):
    st.write("Pair Plot")
    pair_plot = sns.pairplot(df)
    st.pyplot(pair_plot)