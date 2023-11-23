def quicksort(arr):
    if len(arr) <= 1:
        return arr

    stack = [(0, len(arr) - 1)]
    
    while stack:
        low, high = stack.pop()
        pivot = arr[low]
        left, right = low + 1, high

        while left <= right:
            while left <= right and arr[left] <= pivot:
                left += 1
            while left <= right and arr[right] > pivot:
                right -= 1

            if left <= right:
                arr[left], arr[right] = arr[right], arr[left]

        arr[low], arr[right] = arr[right], arr[low]

        if low < right - 1:
            stack.append((low, right - 1))
        if right + 1 < high:
            stack.append((right + 1, high))

    return arr
